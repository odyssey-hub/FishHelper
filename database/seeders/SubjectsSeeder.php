<?php

namespace Database\Seeders;

use App\Models\Subject;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class SubjectsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $N = 15;
        $faker = Faker::create("ru_RU");
        for ($i=0; $i<$N; $i++){
            $subject = new Subject;
            $subject->name = $faker->unique()->region().' обл.';
            $subject->save();
        }
    }
}
