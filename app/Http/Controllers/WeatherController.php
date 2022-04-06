<?php

namespace App\Http\Controllers;

use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use stdClass;

class WeatherController extends Controller
{

    public function index(Request $request)
    {
        if ($request->has("coorX") && $request->has("coorY")) {
            $coorX = $request->input("coorX");
            $coorY = $request->input("coorY");
            [$result_temps, $result_pressures] = $this->getResultData($coorX, $coorY);
            $weather = session('current_weather', "none");
            $weather->daily[0]->wind_deg = $this->convertWindDegToString($weather->daily[0]->wind_deg);
//            $result_temps = ["2021-12-10" => -5, "2021-12-11" => 2, "2021-12-12" => 3];
//            $result_pressures = ["2021-12-10" => 1020, "2021-12-11" => 1021, "2021-12-12" => 1022];
            return view("weather.index", ['request' => $request, 'weather' => $weather,
                'temps' => $result_temps, 'pressures' => $result_pressures]);
        } else {
            return view("weather.index");
        }


//        dd($result_temps, $coorX, $coorY);

    }

    public function getCurrentWeather(Request $request)
    {
        $current_weather = session('current_weather', "none");
        $date = $request["date"];
        $date2 = DateTime::createFromFormat('d.m.Y', $date);
        $date1 = new DateTime(); // Сейчас
        $dayDiff = $date2->diff($date1)->format('%a');
        $weather_by_request = $current_weather->daily[$dayDiff];

        $weather_data = new stdClass(); //объект без класса
        $weather_data->day = $dayDiff;
        $weather_data->tmp_morn = round($weather_by_request->temp->morn);
        $weather_data->tmp_day = round($weather_by_request->temp->day);
        $weather_data->tmp_eve = round($weather_by_request->temp->eve);
        $weather_data->tmp_night = round($weather_by_request->temp->night);
        $weather_data->pressure = $weather_by_request->pressure;
        $weather_data->humidity = $weather_by_request->humidity;
        $weather_data->wind_speed = $weather_by_request->wind_speed;
        $weather_data->wind_direction = $this->convertWindDegToString($weather_by_request->wind_deg);
        $weather_data->clouds = $weather_by_request->clouds;
        $weather_data->uvi = $weather_by_request->uvi;
        return json_encode($weather_data);
    }

    private function getResultData($x, $y)
    {
        [$temps_past, $pressures_past] = $this->getHistoricalData($x, $y);
        [$temps, $pressures] = $this->getCurrentData($x, $y);
        $result_temps = array_merge($temps_past, $temps);
        $result_pressures = array_merge($pressures_past, $pressures);
        return [$result_temps, $result_pressures];
    }

    private function getCurrentData($x, $y)
    {
        $weather = $this->getWeather($x, $y);
        $pressures = array();
        $temps = array();

        for ($i = 0; $i < 8; $i++) {
            $weather_day = $weather->daily[$i];
            $temperature = $weather_day->temp->day;
            $pressure = $weather_day->pressure;

            $next_day = strtotime("+" . $i . " days");
            $date = date('Y-m-d', $next_day);
            $pressures[$date] = $pressure;
            $temps[$date] = $temperature;
        }

        return [$temps, $pressures];
    }

    private function getHistoricalData($x, $y)
    {
        $pressures_past = array();
        $temps_past = array();

        for ($i = 5; $i > 0; $i--) {
            $previous_day = strtotime("-" . $i . " days");
            $weather = $this->getHistoricalWeather($x, $y, $previous_day);
            $weather_day = $weather->hourly[15];

            $pressure = $weather_day->pressure;
            $temperature = $weather_day->temp;
            $date = date('Y-m-d', $previous_day);
            $pressures_past[$date] = $pressure;
            $temps_past[$date] = $temperature;
        }

        return [$temps_past, $pressures_past];
//        $weather = $response->json();
//        $object = json_decode(json_encode($weather), FALSE);
//        dd($pressures_past, $temps_past);
    }

    private function getWeather($lat, $lon)
    {
        $response = Http::get('https://api.openweathermap.org/data/2.5/onecall', [
            'lat' => $lat,
            'lon' => $lon,
            'appid' => '55385ec5f1a7b796118d4a0c1f27fec0',
            'exclude' => 'minutely,alerts',
            'units' => 'metric',
            'lang' => 'ru'
        ]);
        $weather = $response->object();
        session(['current_weather' => $weather]);
        return $weather;
    }

    private function getHistoricalWeather($lat, $lon, $dt)
    {
        $response = Http::get('https://api.openweathermap.org/data/2.5/onecall/timemachine', [
            'lat' => $lat,
            'lon' => $lon,
            'dt' => $dt,
            'appid' => '55385ec5f1a7b796118d4a0c1f27fec0',
            'units' => 'metric',
            'lang' => 'ru'
        ]);
        $weather = $response->object();
        return $weather;
    }

    private function convertWindDegToString($deg)
    {
        switch (true) {
            case  $deg >= 360 && $deg <= 21:
                $deg = "северный";
                break;
            case  $deg >= 22 && $deg <= 44:
                $deg = "северный, северо-восточный";
                break;
            case  $deg >= 45 && $deg <= 66:
                $deg = "северо-восточный";
                break;
            case  $deg >= 67 && $deg <= 89:
                $deg = "восточный, северо-восточный";
                break;
            case  $deg >= 90 && $deg <= 111:
                $deg = "восточный";
                break;
            case  $deg >= 112 && $deg <= 134:
                $deg = "восточный, юго-восточный";
                break;
            case  $deg >= 135 && $deg <= 156:
                $deg = "южно-восточный";
                break;
            case  $deg >= 157 && $deg <= 179:
                $deg = "южный, юго-восточный";
                break;
            case  $deg >= 180 && $deg <= 201:
                $deg = "южный";
                break;
            case  $deg >= 202 && $deg <= 224:
                $deg = "южный, юго-западный";
                break;
            case  $deg >= 225 && $deg <= 246:
                $deg = "юго-западный";
                break;
            case  $deg >= 247 && $deg <= 269:
                $deg = "западный, юго-западный";
                break;
            case  $deg >= 270 && $deg <= 291:
                $deg = "западный";
                break;
            case  $deg >= 292 && $deg <= 314:
                $deg = "западный, северо-западный";
                break;
            case  $deg >= 315 && $deg <= 336:
                $deg = "северо-западный";
                break;
            case  $deg >= 337 && $deg <= 359:
                $deg = "северный, северо-западный";
                break;
            default:
                $deg = "неизвестно";
        }
        return $deg;
    }
}
