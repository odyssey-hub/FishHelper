<?php

namespace App\Http\Controllers;

use App\Models\Fish;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

class FishCatalogController extends Controller
{
    //
    public function index(Request $request)
    {

        if ($request->filled("fishName")) {
            $fish_name = $request["fishName"];
            $query = Fish::where("name", "LIKE", "%".$fish_name."%");
        }
        else if ($request->filled("filterType")) {
            $type = $request["filterType"];
            if ($type == "Все рыбы") {
                $query = Fish::orderBy('name');
            } else {
                $query = Fish::where("type", "=", $type);
            }
            if ($request->filled("reds")){
                $query = $query->where("isRed", "=", "1");
            }
        }
        else {
            $query = Fish::orderBy('name');
        }
        $fishes = $query->paginate(12);
        return view("fish_catalog.catalog", ['fishes'=>$fishes]);
    }

    public function  item($name)
    {
        $fish = Fish::where("name", $name)->first();
        $fish_info = $fish->info;
        if ($fish_info){
            $fish_info->isRed = $fish->isRed;
            $fish_info->images = $fish->images;
            return view('fish_catalog.item', ["fish" => $fish_info]);
        } else {
            return view("fish_catalog.item");
        }
    }
}
