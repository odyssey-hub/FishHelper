<?php

namespace App\Http\Controllers\Test;

use App\Http\Controllers\Controller;
//use Faker\Provider\ru_RU\Address;
use App\Models\Bite;
use App\Models\Fish;
use App\Models\Location;
use App\Models\LocationImg;
use App\Models\Subject;
use Faker\Factory as Faker;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class TestController extends Controller
{
    //
    public function index()
    {
        $faker = Faker::create("ru_RU");

    }
}
