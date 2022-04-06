<?php

namespace Database\Seeders;

use App\Models\Bite;
use App\Models\User;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class BiteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $N = 3;
        for($i=0; $i < $N; $i++){
            $this->createBite();
        }
    }

    private function createBite()
    {
        $faker = Faker::create("ru_RU");
        $bite = new Bite;
        $bite->name = $faker->word();
        $img_num = $faker->numberBetween(1,7);
        $bite->img = "users/2/bites/{$img_num}.jpg";
        $types = ["Воблеры", "Блесны", "Поролоновые", "Мягкие", "Животные", "Растительные"];
        $bite->type = $types[$faker->numberBetween(0,5)];
        $bite->description = $faker->optional(0.7)->text($faker->numberBetween(10,20));
        $bite->user_id = User::all()->random()->id;
        $bite->save();
    }
}
