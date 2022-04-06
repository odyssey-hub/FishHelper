<?php

namespace Database\Seeders;

use Faker\Factory as Faker;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FishFactorsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $fish = "Белуга";

        $this->clear($fish);

        /*Самые значимые факторы*/
        $min = $faker->randomFloat(2, 5, 15);
        $max = $faker->randomFloat(2, 16, 25);
        $opt_values = $min.",".$max;
        $weight = $faker->randomFloat(2,0.8,1);
        $this->insert($fish, "Температура", "Численный", $opt_values, $weight, "°C");


        $faker = Faker::create();
        $set = ["утро", "день", "вечер", "ночь"];
        $opt_values = "";
        for($i=0; $i<$faker->numberBetween(1,2); $i++)
        {
            $index = $faker->unique->numberBetween(0,3);
            $value  = $set[$index];
            if ($i==0){
                $opt_values =  $value;
            } else {
                $opt_values =  $opt_values.",".$value;
            }
        }
        $weight = $faker->randomFloat(2,0.6,0.8);
        $this->insert($fish, "Время суток", "Строковый", $opt_values, $weight);


        $faker = Faker::create();
        $set = ["осень", "лето", "весна", "зима"];
        $opt_values = "";
        for($i=0; $i<$faker->numberBetween(1,2); $i++)
        {
            $index = $faker->unique->numberBetween(0,3);
            $value  = $set[$index];
            if ($i==0){
                $opt_values =  $value;
            } else {
                $opt_values =  $opt_values.",".$value;
            }
        }
        $weight = $faker->randomFloat(2,0.5,0.7);
        $this->insert($fish, "Время года", "Строковый", $opt_values, $weight);



        $faker = Faker::create();
        $set = ["ясно", "облачно", "дождь", "гроза", "снег", "туман"];
        $opt_values = "";
        for($i=0; $i<$faker->numberBetween(4,6); $i++)
        {
            $index = $faker->unique->numberBetween(0,5);
            $value  = $set[$index];
            if ($i==0){
                $opt_values =  $value;
            } else {
                $opt_values =  $opt_values.",".$value;
            }
        }
        $weight = $faker->randomFloat(2,0.5,0.7);
        $this->insert($fish, "Осадки", "Строковый", $opt_values, $weight);



        /*Средние по значимости*/
        if($faker->boolean()){
            $faker = Faker::create();
            $set = ["новолуние", "полнолуние", "растущая луна", "убываюшая луна"];
            $opt_values = "";
            for($i=0; $i<$faker->numberBetween(2,4); $i++)
            {
                $index = $faker->unique->numberBetween(0,3);
                $value  = $set[$index];
                if ($i==0){
                    $opt_values =  $value;
                } else {
                    $opt_values =  $opt_values.",".$value;
                }
            }
            $weight = $faker->randomFloat(2,0.3,0.4);
            $this->insert($fish, "Фаза луны", "Строковый", $opt_values, $weight);
        }

        if($faker->boolean()) {
            $min = $faker->randomFloat(2, 2, 5);
            $max = $faker->randomFloat(2, 6, 10);
            $opt_values = $min.",".$max;
            $weight = $faker->randomFloat(2,0.3,0.4);
            $this->insert($fish, "Сила ветра", "Численный", $opt_values, $weight, "м/c");
        }

        if($faker->boolean()){
            $min = $faker->numberBetween(745, 850);
            $max = $faker->numberBetween(851, 1000);
            $opt_values = $min.",".$max;
            $weight = $faker->randomFloat(2,0.2,0.3);
            $this->insert($fish, "Давление", "Численный", $opt_values, $weight, "мм.рт.ст.");
        }




        /*Незначительные*/

        if($faker->boolean()){
            $min = $faker->numberBetween(50, 70);
            $max = $faker->numberBetween(71,100);
            $opt_values = $min.",".$max;
            $weight = $faker->randomFloat(2,0.05,0.1);
            $this->insert($fish, "Облачность", "Численный", $opt_values, $weight, "%");
        }

        if($faker->boolean()){
            $min = $faker->numberBetween(40, 60);
            $max = $faker->numberBetween(80,100);
            $opt_values = $min.",".$max;
            $weight = $faker->randomFloat(2,0.05,0.1);
            $this->insert($fish, "Влажность", "Численный", $opt_values, $weight, "%");
        }

        if($faker->boolean()){
            $min = $faker->numberBetween(0, 1);
            $max = $faker->numberBetween(6,8);
            $opt_values = $min.",".$max;
            $weight = $faker->randomFloat(2,0.05,0.1);
            $this->insert($fish, "УФ индекс", "Численный", $opt_values, $weight);
        }

    }


    private function clear($fish)
    {
        DB::delete('delete from fish_factors where fish_name = ?',[$fish]);
    }

    private function insert($fish, $name,  $type, $opt_values, $weight, $units = " ")
    {
        DB::table('fish_factors')->insert([
            "fish_name" => $fish,
            'name' => $name,
            'type' => $type,
            "opt_values" => $opt_values,
            "weight" => $weight,
            "units" => $units
        ]);
    }
}
