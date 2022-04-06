<?php

namespace Database\Seeders;

use App\Models\Fish;
use App\Models\FishImg;
use App\Models\FishInfo;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class FishSeeder extends Seeder
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
            $this->createFish();
        }
    }

    private function createFish()
    {
        $faker = Faker::create("ru_RU");
        $fish = new Fish;
        $fish->name = $faker->unique()->word();
        $fish->type = $faker->randomElement(["Морские", "Частиковые", "Пресноводные", "Проходные", "Речные"]);
        $fish->isRed = 0;
        $fish->img = Fish::all()->random()->img;

        $fish->save();
        $fish->refresh();
        $fish->info()->save($this->createFishInfo());
        $fish->refresh();
        $fish->images()->saveMany($this->createImages());


    }

    private function createFishInfo()
    {
        $faker = Faker::create("ru_RU");
        $fish_info = new FishInfo;
        $fish_info->latin = $faker->word();
        $fish_info->other_names = $faker->words($faker->numberBetween(1,4), true);
        $fish_info->family = $faker->word();
        $fish_info->genus = $faker->words(2,true);
        $fish_info->type = $faker->word();
        $fish_info->lifestyle = $faker->word();
        $fish_info->food_type = $faker->word();
        $fish_info->area = $faker->words($faker->numberBetween(5,10), true);
        $fish_info->appereance = $faker->text(700);
        $fish_info->habitat = $faker->text(700);
        $fish_info->food_features = $faker->text(700);
        $fish_info->reproduction = $faker->text(700);
        $fish_info->catches = $faker->text(700);
        $fish_info->baits = $faker->text(700);
        return $fish_info;
    }

    private function createImages()
    {
        $faker = Faker::create("ru_RU");
        $images = array();
        for ($i=0; $i < $faker->numberBetween(1,4); $i++){
            $fish_img = new FishImg;
            $fish_img->img = FishImg::all()->random()->img;
            $images[] = $fish_img;
        }
        return $images;
    }
}
