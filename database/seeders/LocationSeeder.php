<?php

namespace Database\Seeders;

use App\Models\Fish;
use App\Models\Location;
use App\Models\LocationImg;
use App\Models\Subject;
use App\Models\WaterType;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use function GuzzleHttp\Promise\all;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $N = 300;
        for($i=0; $i < $N; $i++){
            $this->createLocation();
        }
    }

    private function createLocation()
    {
        $faker = Faker::create();
        $location = new Location;
        $location->name = $faker->word();
        $location->type = WaterType::all()->random()->name;
        $location->description = $faker->text(600);
        $location->square = $faker->numberBetween(100, 10000 );
        $location->depth = $faker->numberBetween(5, 50);
        $location->isRed = 0;
        $location->img = Location::all()->random()->img;
        $location->subject = Subject::all()->random()->name;
        $location->coorX = $faker->randomFloat(6,45,49);
        $location->coorY = $faker->randomFloat(6,45,49);
        $location->save();
//        $location->refresh();
//        $location->imgs()->saveMany($this->createLocationImgs());
//        $location->refresh();
//        $location->fishes()->saveMany($this->createLocationFishes());
//        $location->info()->save($this->createFishInfo());
//        $location->refresh();
//        $location->images()->saveMany($this->createImages());
    }

    private function createLocationImgs()
    {
        $faker = Faker::create("ru_RU");
        $images = array();
        for ($i=0; $i < $faker->numberBetween(1,4); $i++){
            $location_img = new LocationImg;
            $location_img->img = LocationImg::all()->random()->img;
            $images[] = $location_img;
        }
        return $images;
    }

    private function createLocationFishes()
    {
        $faker = Faker::create("ru_RU");
        $fishes_names = Fish::select("name")->get()->toArray();
        $fishes = array();
        for($i=0; $i<$faker->unique()->numberBetween(3,7); $i++){
            $fish = Fish::find( $fishes_names[$faker->unique->numberBetween(0, 14)]["name"]);
            $fishes[] = $fish;
        }
        return $fishes;
    }
}
