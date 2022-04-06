<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Bite;
use App\Models\FishCatch;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class BaitsController extends Controller
{
    //
    public function index()
    {
        $id = auth()->id();
        $bites = Bite::where("user_id", $id)->get();
        return view("auth.user.baits.index", ['bites'=>$bites]);
    }

    public function store(Request $request)
    {
        $params = $request->except("_token");
        $user_id = auth()->id();
        $params["user_id"] = $user_id;
        if ($request->has('img')) {
            $params['img'] = $request->file('img')->store("users/${user_id}/bites", 'public');
        }
        Bite::create($params);
        return redirect()->route("baits")->with("category", $params["type"]);
    }

    public function update(Request $request)
    {
        $params = $request->except("_token");
        $bite = Bite::where('name', $params["oldname"])->first();
        $bite->name = $params["name"];
        $bite->description = $params["description"];
        $bite->type = $params["type"];
        $user_id = $bite->user_id;
        if ($request->has('img')) {
            if($bite->img) Storage::disk("public")->delete($bite->img);
            $bite->img = $request->file('img')->store("users/${user_id}/bites", 'public');
        }
        $bite->save();
        return redirect()->route("baits")->with("category", $params["type"]);
    }

    public function destroy(Request $request)
    {
        $id = $request["id"];
        $category = $request["type"];
        $bite = Bite::find($id);
        if ($bite->img){
            Storage::disk("public")->delete($bite->img);
        }
        Bite::destroy($id);
        return redirect()->route('baits')->with("category", $category);
    }
}
