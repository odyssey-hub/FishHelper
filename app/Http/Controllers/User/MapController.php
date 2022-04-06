<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Location;
use App\Models\Mark;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\Facades\DB;

class MapController extends Controller
{
    //
    public function index()
    {
        $marks =  DB::Table("marks")
            ->where("marks.user_id", "=",  auth()->id())
            ->leftJoin("fish_catches", "fish_catches.mark_id", "=", "marks.id")
            ->select("marks.id", "marks.name", "marks.description", "marks.coorX", "marks.coorY", DB::raw("COUNT(fish_catches.name) AS catch_num"))
            ->groupBy("marks.id", "marks.name", "marks.description", "marks.coorX", "marks.coorY")
            ->get();
//        $locations = Location::get(["id", "name", "isRed", "coorX", "coorY"]);
        $locations = Location::whereIn("id", array(1,2,3,4,5,6,7))->get(["id", "name", "isRed", "coorX", "coorY"]);
        return view("auth.user.map.index", ["marks"=>$marks, "locations"=>$locations]);
    }


    /*
     SELECT marks.id, marks.name, marks.description, marks.coorX, marks.coorY,
COUNT(fish_catches.name) AS "catch_num" FROM `marks`
JOIN fish_catches ON fish_catches.mark_id = marks.id
GROUP BY marks.id
     */

    public function getFishesForMark(Request $request)
    {
        $mark_id = $request["id"];
        $fishes = DB::table("marks")
            ->join("fish_catches", "fish_catches.mark_id","=", "marks.id")
            ->where("marks.id","=", $mark_id)
            ->get(["fish_catches.name", "fish_catches.fish", "fish_catches.weight", "fish_catches.date", "fish_catches.img"]);
        return $fishes;
    }

    public function getFishesForLocation(Request $request)
    {
        $location_id = $request["id"];
        $fishes = DB::Table("locations_fishes")
            ->join("locations", "locations.id", "=", "locations_fishes.location_id")
            ->join("fish", "fish.name", "=", "locations_fishes.fish_name")
            ->where("locations.id", "=", $location_id)
            ->get(["fish.name", "fish.img"]);
        return $fishes;
    }


    public function store(Request $request)
    {
        $params = $request->all();
        $mark = new Mark;
        $mark->name = $params["name"];
        $mark->description = $params["description"];
        $mark->coorX = round($params["coorX"], 6);
        $mark->coorY = round($params["coorY"], 6);
        $mark->user_id = auth()->id();
        $location = Location::where("name", $params["location"])->first();
        $mark->location_id = $location->id;
        $mark->save();
    }

    public function update(Request $request)
    {
        $params = $request->all();
        $mark = Mark::find($params["id"]);
        $mark->name = $params["name"];
        $mark->description = $params["description"];
        $location = Location::where("name", $params["location"])->first();
        $mark->location_id = $location->id;
        $mark->save();
    }

    public function destroy(Request $request)
    {
        $id = $request["id"];
        Mark::destroy($id);
    }

    public function getMark(Request $request)
    {
        $id = $request["id"];
        $mark = Mark::find($id);
        $location = DB::Table("locations")
            ->join("marks", "locations.id","=", "marks.location_id")
            ->where("marks.id","=",$id)
            ->get("locations.name");
        $mark->location = $location[0]->name;
        return $mark;
    }


}
