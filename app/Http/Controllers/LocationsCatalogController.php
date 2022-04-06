<?php

namespace App\Http\Controllers;

use App\Models\Fish;
use App\Models\Location;
use App\Models\LocationImg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LocationsCatalogController extends Controller
{
    public function index(Request $request)
    {
        $query = DB::Table("locations");
        if ($request->filled("locationName")){
            $location_name = $request["locationName"];
            $query = $query->where("name", "LIKE", "%".$location_name."%");
        }
        else {
            if ($request->filled("locationType")){
                if ($request["locationType"] != "Все типы") {
                    $query = $query->where("type", "=", $request["locationType"]);
                }
            }
            if ($request->filled("subject")){
                $query = $query->where("subject", "=", $request["subject"]);
            }
            if ($request->filled("reds")){
                $query = $query->where("isRed", "=", "1");
            }
        }
        $query = $query->whereIn("id", array(1,2,3,4,5,6,7,8,9,10))->orderBy("name");
        $locations = $query->paginate(10);
        $locations_types = DB::Table("water_types")->get();
        return view("locations_catalog.catalog", ["locations"=>$locations,
            "types"=>$locations_types]);
    }

    public function item($id)
    {
        $location = Location::find($id);
        $images = $location->imgs()->get("img");
        $fishes = $location->fishes;
        return view('locations_catalog.item', ["location"=>$location, "images"=>$images, "fishes"=>$fishes]);
    }
}
