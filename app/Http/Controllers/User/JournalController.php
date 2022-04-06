<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Bite;
use App\Models\FishCatch;
use App\Models\Mark;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class JournalController extends Controller
{
    //
    public function index(Request $request)
    {
        $query = DB::table('fish_catches')->where('fish_catches.user_id',"=", auth()->id())
            ->join('fish', 'fish_catches.fish', '=', 'fish.name')
            ->join('marks', 'fish_catches.mark_id', '=', 'marks.id')
            ->join('locations', 'fish_catches.location_id', '=', 'locations.id')
            ->leftJoin('bites', 'fish_catches.bait_id', '=', 'bites.id')
            ->select("fish_catches.id", "fish_catches.name", "fish_catches.img","fish_catches.date", "fish_catches.weight",
                DB::raw("bites.name as bite"),  DB::raw("marks.name as mark"),
                DB::raw("locations.name as location"),  DB::raw("fish.name as fish"));

        $query = $this->getFiltrateQuery($request, $query);

        $catches = $query->paginate(10);
        return view("auth.user.journal.index", ["catches"=>$catches]);
    }

    public function getFiltrateQuery($request, $query)
    {
        if ($request->filled("catchName")) {
            $catch_name = $request["catchName"];
            $query = $query->where("fish_catches.name", "LIKE", "%".$catch_name."%");
        }

        if ($request->filled("date_start")) {
            $date_start = $request["date_start"];
            $query = $query->where("fish_catches.date", ">=", $date_start);
        }

        if ($request->filled("date_end")) {
            $date_end = date($request["date_end"]);
            $query = $query->where("fish_catches.date", "<=", $date_end);
        }

        if ($request->filled("fish")){
            $fish = $request["fish"];
            $query = $query->where("fish_catches.fish", "=", $fish);
        }

        if ($request->filled("location")){
            $location = $request["location"];
            $query = $query->where("locations.name", "=", $location);
        }

        if ($request->filled("weight_min")){
            $min = $request["weight_min"];
            $query = $query->where("fish_catches.weight", ">=", $min);
        }

        if ($request->filled("weight_max")){
            $max = $request["weight_max"];
            $query = $query->where("fish_catches.weight", "<=", $max);
        }

        if ($request->filled("sortField") && $request->filled("sortOrder"))
        {
            $sortField = $request["sortField"];
            $sortOrder = $request["sortOrder"];
            if ($sortOrder === "asc")  $query = $query->orderBy($sortField);
            else $query = $query->orderByDesc($sortField);
        } else {
            $query->orderbyDesc('date');
        }

        return $query;
    }

    public function store(Request $request)
    {
        $params = $request->except("_token");
        $fish_catch = new FishCatch;
        $fish_catch->user_id = auth()->id();
        $fish_catch->name = $params["name"];
        $fish_catch->date = $params["date"];
        $fish_catch->fish = $params["fish"];

        $mark = Mark::where("name", $params["mark"])->first();
        $fish_catch->mark_id = $mark->id;
        $fish_catch->location_id = $mark->location_id;

        if ($request->has('img')) {
            $user_id = $fish_catch->user_id;
            $fish_catch->img = $request->file('img')->store("users/${user_id}/catches", 'public');
        }

        if ($request->filled("bite")){
            $bite = Bite::where('name', $params["bite"])->first();
            $fish_catch->bait_id = $bite->id;
            $bite->catch_num++;
            $bite->save();
        }

        if ($request->filled("weight")){
            $fish_catch->weight = $params["weight"];
        }

        $fish_catch->save();
        return  redirect()->route("journal")->with("add_success", true);
    }

    public function update(Request $request)
    {
        $params = $request->except("_token");
        $fish_catch = FishCatch::find($params["id"]);
        $fish_catch->name = $params["name"];
        $fish_catch->date = $params["date"];
        $fish_catch->fish = $params["fish"];

        $mark = Mark::where("name", $params["mark"])->first();
        $fish_catch->mark_id = $mark->id;
        $fish_catch->location_id = $mark->location_id;

        if ($request->has('img')) {
            if($fish_catch->img) Storage::disk("public")->delete($fish_catch->img);
            $user_id = $fish_catch->user_id;
            $fish_catch->img = $request->file('img')->store("users/${user_id}/catches", 'public');
        }

        if ($request->filled("bite")){
            $bite = Bite::where('name', $params["bite"])->first();
            $fish_catch->bait_id = $bite->id;
        }

        if ($request->filled("weight")){
            $fish_catch->weight = $params["weight"];
        }

        $fish_catch->save();
        return redirect()->route("journal")->with("updated_record", $fish_catch->name);
    }

    public function destroy(Request $request)
    {
        $id = $request["id"];
        $catch = FishCatch::find($id);
        if ($catch->img){
            Storage::disk("public")->delete($catch->img);
        }
        FishCatch::destroy($id);
        return redirect()->route('journal')->with("del_success", true);
    }

}
