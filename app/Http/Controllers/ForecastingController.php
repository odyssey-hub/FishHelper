<?php

namespace App\Http\Controllers;

use App\Models\Location;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Sunra\PhpSimple\HtmlDomParser;


class ForecastingController extends Controller
{
    //
    public function index(Request $request)
    {
        if($request->filled("subject") && $request->filled("date") && $request->filled("daytime")
           && $request->filled("fish")){
            $subject = $request["subject"];
            $date = $request["date"];
            $daytime = $request["daytime"];
            $fish = $request["fish"];

            [$locations, $formated_factors] = $this->proccessForecast($subject, $fish, $daytime, $date);

            return view("fish_forecasting.index", ["locations"=>$locations,
                "factors"=> $formated_factors, "season"=> $this->getSeason($date)
            ]);
        } else {
            return view("fish_forecasting.index");
        }

    }

    private function proccessForecast($subject, $fish, $daytime, $date)
    {
        $locations = $this->getLocations($subject);
        $fish_factors = $this->getFishFactors($fish);

        foreach($locations as $location){
            [$location->P, $location->weather, $location->plus_factors] =
                $this->getForecast($daytime, $date, $fish_factors, $location->coorX, $location->coorY);
        }

        $locations = $locations->sortByDesc("P");
        $formated_factors = $this->formatFactors($fish_factors);
        return [$locations, $formated_factors];
//              $weather = $this->getWeather(48.878, 44.6995);
//                $plus_factors = ["Осадки"=>"true", "Температура"=>"true", "УФ индекс"=>"true", "Сила ветра"=>"true"];
//              foreach($locations as $location){
//                  $location->P = rand(10,100);
//                  $location->weather = $weather;
//                  $location->plus_factors = $plus_factors;
//              }
    }

    private function getLocations($subject)
    {
        $locations = DB::Table("locations")
            ->where("subject", "=", $subject)
            ->where("isRed", "=", "0")
            ->select("name", "coorX", "coorY")
            ->take(10)
            ->get();
        return $locations;
    }

    private function getFishFactors($fish)
    {
        $fish_factors = DB::Table("fish_factors")
            ->where("fish_name", "=", $fish)
            ->select("name", "type", "opt_values", "weight", "units")
            ->get();
        return $fish_factors;
    }


    private function getForecast($daytime, $date, $fish_factors, $coorX = 48.878, $coorY = 44.6995)
    {
        $SumWeight = 0;
        $SumFactors = 0;
        $plus_factors = array();
        $weather_raw = $this->getWeather($coorX, $coorY);
        $weather = $weather_raw->daily[$this->calculateDayDiff($date)];
//            $debug_string = "";
        foreach($fish_factors as $factor) {
            $SumWeight += $factor->weight;
            $factorValue = $this->getFactorValue($factor, $weather, $daytime, $date);
            if($factorValue == 1) $plus_factors[$factor->name] = true;
            $SumFactors += $factorValue*$factor->weight;
//                $debug_string .= $factor->name." ".$factorValue."*".$factor->weight." ";
        }
        $P = round($SumFactors/$SumWeight*100);
//        dd($debug_string, $SumFactors, $SumWeight, $P);
        return [$P, $weather, $plus_factors];

    }

    private function formatFactors($factors)
    {
        $factors->transform(function ($item, $key) {
            if ($item->type == "Численный"){
                $parsed_string = explode(",", $item->opt_values);
                $min = $parsed_string[0];
                $max = $parsed_string[1];
                $item->opt_values = "[".$min.", ".$max."]";
            }
            return $item;
        });
        return $factors;
    }


    private function getFactorValue($factor, $weather, $daytime, $date)
    {
        if ($factor->type == "Численный"){
            $curr_value = $this->getCurrValueForNumberFactor($factor->name, $weather, $daytime);
            $parsed_string = explode(",", $factor->opt_values);
            $min = floatval($parsed_string[0]);
            $max = floatval($parsed_string[1]);
            if ($curr_value > $min && $curr_value < $max){
                return 1;
            } else {
                return 0;
            }
        }
        if ($factor->type == "Строковый"){
            $curr_value = $this->getCurrValueForStringFactor($factor->name, $weather, $daytime, $date);
            $opts = explode(",", $factor->opt_values);
            if(in_array($curr_value, $opts)){
                return 1;
            } else {
                return 0;
            }
        }
        return 0;
    }


    private function getCurrValueForStringFactor($name, $weather, $daytime, $date)
    {
        switch ($name){
            case "Время суток":
                $current_value = $daytime;
                break;
            case "Время года":
                $current_value = $this->getSeason($date);
                break;
            case "Фаза луны":
                $current_value = $this->getMoonPhase($weather->moon_phase);
                break;
            case "Осадки":
                $code = substr($weather->weather[0]->icon, 0, 2);
                $current_value = $this->getPrecipitation($code);
                break;
            default:
                $current_value = "undefined";
                break;
        }
        return $current_value;
    }


    private function getCurrValueForNumberFactor($name, $weather, $daytime)
    {
        switch ($name) {
            case "Температура":
                $current_value = $this->getCurrentTemp($daytime, $weather);
                break;
            case "Давление":
                $current_value = $weather->pressure;
                break;
            case "Облачность":
                $current_value = $weather->clouds;
                break;
            case "Влажность":
                $current_value = $weather->humidity;
                break;
            case "УФ индекс":
                $current_value = $weather->uvi;
                break;
            case "Сила ветра":
                $current_value = $weather->wind_speed;
                break;
            default:
                $current_value = "undefined";
                break;
        }
        return $current_value;
    }

    private function calculateDayDiff($date)
    {
        $date2 = DateTime::createFromFormat('d.m.Y', $date);
        $date1 = new DateTime(); // Сейчас
        $dayDiff = $date2->diff($date1)->format('%a');
        return $dayDiff;
    }

    private function getCurrentTemp($daytime, $weather)
    {
        $temp = 0;
        switch ($daytime){
            case "утро":
                $temp = $weather->temp->morn;
                break;
            case "день":
                $temp = $weather->temp->day;
                break;
            case "вечер":
                $temp = $weather->temp->eve;
                break;
            case "ночь":
                $temp = $weather->temp->night;
                break;
            default:
                $temp = -5;
        }
        return round($temp);
    }

    private function getPrecipitation($code)
    {
        switch ($code){
            case "01":
            case "02":
                $value = "ясно";
                break;
            case "03":
            case "04":
                $value = "облачно";
                break;
            case "09":
            case "10":
                $value = "дождь";
                break;
            case "11":
                $value = "гроза";
                break;
            case "13":
                $value = "снег";
                break;
            case "50":
                $value = "туман";
                break;
        }
        return $value;
    }

    private function getMoonPhase($phase_deg)
    {
        if ($phase_deg == 0 || $phase_deg == 1) {
            return "новолуние";
        } else if ($phase_deg > 0 && $phase_deg < 0.5){
            return "растущая луна";
        } else if ($phase_deg == 0.5){
            return "полнолуние";
        } else if ($phase_deg > 0.5 && $phase_deg < 1){
            return "убываюшая луна";
        } else {
            return "undefined";
        }
    }

    private function getSeason($date)
    {
        $parsed_date = explode(".", $date);
        $month = $parsed_date[1];
        switch ($month) {
            case "01":
            case "02":
            case "12":
                $season = 'зима';
                break;
            case "03":
            case "04":
            case "05":
                $season = 'весна';
                break;
            case "06":
            case "07":
            case "08":
                $season = 'лето';
                break;
            case "09":
            case "10":
            case "11":
                $season = 'осень';
                break;
            default:
                $season = "undefined";
                break;
        }
        return $season;
    }

    private function getWeather($lat, $lon)
    {
        $response = Http::get('https://api.openweathermap.org/data/2.5/onecall', [
            'lat' => $lat,
            'lon' => $lon,
            'appid' => '55385ec5f1a7b796118d4a0c1f27fec0',
            'exclude' => 'minutely,alerts,hourly',
            'units' => 'metric',
            'lang' => 'ru'
        ]);
        $weather = $response->object();
        return $weather;
    }


}
