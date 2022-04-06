<?php

namespace Database\Seeders;

use App\Models\Bite;
use App\Models\Fish;
use App\Models\FishCatch;
use App\Models\Location;
use App\Models\Mark;
use App\Models\User;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CatchesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $N = 9000;
        for($i=0; $i < $N; $i++){
            $this->createCatch();
        }

    }

    private  function createCatch()
    {
        $faker = Faker::create();
        $catch = new FishCatch;
        $catch->name = "Улов №" . $faker->unique()->randomNumber(4, false);
        $catch->img = FishCatch::all()->random()->img;
        $catch->date = $faker->dateTimeBetween('+1 week', '+'.$faker->numberBetween(2, 16).' week');
        $catch->weight = $faker->randomFloat(2, 1, 20);
        $catch->user_id = 2;
        $catch->bait_id = Bite::where("user_id", $catch->user_id)->get()->random()->id;
        $catch->mark_id = Mark::where("user_id", $catch->user_id)->get()->random()->id;
        $catch->fish = Fish::all()->random()->name;
        $catch->location_id = Location::all()->random()->id;
        $catch->save();
    }
}
