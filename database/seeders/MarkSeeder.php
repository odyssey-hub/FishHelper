<?php

namespace Database\Seeders;

use App\Models\Location;
use App\Models\Mark;
use App\Models\User;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MarkSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $N = 2;
        for($i=0; $i < $N; $i++){
            $this->createMark();
        }
    }

    private function createMark()
    {
        $faker = Faker::create("ru_RU");
        $mark = new Mark;
        $mark->name = $faker->word();
        $mark->description = $faker->words($faker->numberBetween(5, 20),true);
        $mark->coorX = $faker->randomFloat(6, 45,49);
        $mark->coorY = $faker->randomFloat(6, 45,49);
        $mark->user_id = User::all()->random()->id;
        $mark->location_id = Location::where("isRed", 0)->get()->random()->id;
        $mark->save();

    }
}
