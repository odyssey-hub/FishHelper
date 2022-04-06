<?php

namespace App\Http\Controllers;

use App\Models\Fish;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SearchPlacesController extends Controller
{
    //
    public function index(Request $request)
    {
        if ($request->has("subject") && $request->has("date")) {
            $subject = $request["subject"];
            $date = $request["date"];
            $selection = $this->getSelection($date);


            if ($request->filled("fish")){
                $fish = $request["fish"];
                $locations = DB::Table("locations")
                    ->select(DB::raw("locations.name, locations.img, locations.coorX, locations.coorY, locations.description,
                COUNT(fish_catches.fish) as count, AVG(fish_catches.weight) as weight"))
                    ->where("locations.subject", "=", $subject)
                    ->join("fish_catches", "fish_catches.location_id", "=", "locations.id")
                    ->where("date", ">", DB::raw("NOW() - INTERVAL ".$selection." DAY"))
                    ->where("fish_catches.fish", "=", $fish)
                    ->groupBy("locations.id", "locations.name", "locations.img", "locations.coorX", "locations.coorY", "locations.description")
                    ->orderByDesc("count")
                    ->paginate(10);
            } else {
                $locations = DB::Table("locations")
                    ->select(DB::raw("locations.name, locations.img, locations.coorX, locations.coorY, locations.description, COUNT(fish_catches.id) as count"))
                    ->where("locations.subject", "=", $subject)
                    ->join("fish_catches", "fish_catches.location_id", "=", "locations.id")
                    ->where("date", ">", DB::raw("NOW() - INTERVAL ".$selection." DAY"))
                    ->groupBy("locations.id", "locations.name", "locations.img", "locations.coorX", "locations.coorY", "locations.description")
                    ->orderByDesc("count")
                    ->paginate(10);
            }
            return view("search_places.index", ["locations"=>$locations]);
        } else {
            return view("search_places.index");
        }
    }


    private function getSelection($date){
        switch ($date) {
            case "За последние 3 месяца":
                $selection = 365;
                break;
            case "За последний месяц":
                $selection = 30;
                break;
            case "За последние 2 недели":
                $selection = 14;
                break;
            case "За последнюю неделю":
                $selection = 7;
                break;
            default:
                $selection = 7;
                break;
        }
        return $selection;
    }
}


/*
SELECT locations.name, locations.img, locations.coorY, locations.coorY,
COUNT(fish_catches.id) as "count" FROM locations
JOIN fish_catches ON fish_catches.location_id = locations.id
WHERE locations.subject = "Волгоградская область" AND date> NOW() - INTERVAL 30 DAY
GROUP BY locations.id
ORDER BY COUNT(fish_catches.id) DESC
*/
/*
SELECT locations.name, locations.img, locations.coorY, locations.coorY,
COUNT(fish_catches.fish) as "count", AVG(fish_catches.weight) as "weight" FROM locations
JOIN fish_catches ON fish_catches.location_id = locations.id
WHERE locations.subject = "Волгоградская область" AND date> NOW() - INTERVAL 90 DAY
AND fish_catches.fish = "Белуга"
GROUP BY locations.id
ORDER BY COUNT(fish_catches.fish) DESC
*/
