<?php

namespace App\Http\Controllers;

use App\Models\Bite;
use App\Models\Fish;
use App\Models\FishCatch;
use App\Models\Location;
use App\Models\Mark;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AutocompleteController extends Controller
{
    public function getFishes()
    {
        $fishes = Fish::get('name');
        return $fishes;
    }

    public function getFishesNotRed()
    {
        $fishes = Fish::where("isRed","0")->get('name');
        return $fishes;
    }


    public function getLocations()
    {
        $locations = Location::get('name');
        return $locations;
    }


    public function getSubjects()
    {
        $subjects = Location::select("subject as name")->distinct()->get();
        return $subjects;
    }


    public function getLocationsForSubject(Request $request)
    {
        $subject =  $request->input('data');
        $locations = Location::where("subject", $subject)->get("name");
        return $locations;
    }

    public function getLocationsForSubjectUser(Request $request)
    {
        $subject =  auth()->user()->subject;
        $locations = Location::where("subject", $subject)->where("isRed",0)->get("name");
        return $locations;
    }


    public function getCoordsForLocation(Request $request)
    {
        $location = $request->input("data");
        $coords = DB::table("locations")->select('coorX','coorY')->where('name', $location)->get();
//        $coords = Location::where("name", $location)->get("coorX", "coorY");
        return $coords;
    }


    public function getFishesForUser()
    {
        $user = auth()->user();
        $id = $user->id;
        $fishes = DB::table("fish_catches")
            ->where("fish_catches.user_id","=",$id)
            ->join("fish","fish_catches.fish","=", "fish.name")
            ->where("fish.isRed", "=", "0")
            ->select( DB::raw("fish.name as name"))
            ->distinct()
            ->get();
        return $fishes;
    }


    public function getCatchNamesForUser()
    {
        $user = auth()->user();
        $id = $user->id;
        $catch_names = FishCatch::where("user_id", $id)
            ->distinct()
            ->get("name");
        return $catch_names;
    }


    public function getLocationsForUser()
    {
        $user = auth()->user();
        $id = $user->id;
        $locations = DB::table("fish_catches")
            ->where("fish_catches.user_id","=",$id)
            ->join("locations","fish_catches.location_id","=", "locations.id")
            ->where("locations.isRed","=", "0")
            ->select( DB::raw("locations.name as name"))
            ->distinct()
            ->get();
        return $locations;
    }


    public function getBaitsForUser()
    {
        $user = auth()->user();
        $id = $user->id;
        $baits = Bite::where("user_id", $id)->get('name');
        return $baits;
    }


    public function getMarksForUser()
    {
        $user = auth()->user();
        $id = $user->id;
        $marks = Mark::where("user_id",$id)->get('name');
        return $marks;
    }
}

