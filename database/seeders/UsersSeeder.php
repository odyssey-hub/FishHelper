<?php

namespace Database\Seeders;

use App\Models\Subject;
use App\Models\User;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class UsersSeeder extends Seeder
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
            $this->createUser();
        }
    }


    private function createUser()
    {
        $faker = Faker::create("ru_RU");
        $user = new User;
        $user->name = $faker->unique()->userName();
        $user->email = $faker->unique()->safeEmail();
        $user->subject = Subject::all()->random()->name;
        $user->password = $faker->password(6,7);
        $user->save();
    }
}
