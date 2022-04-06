<?php

namespace App\Admin\Controllers;

use App\Models\Fish;
use App\Models\FishFactor;
use App\Models\FishImg;
use App\Models\FishInfo;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class FishController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Рыбы';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Fish());

        $grid->column('img', "Аватар")->image();
        $grid->column('name', "Название")->sortable();
        $grid->column('type',"Тип")->sortable();
        $grid->column('isRed', "Красный")->display(function($value) {
            if ($value) return "<span style='color:red'>да</span>";
            else return "нет";
        })->sortable();;
        $grid->column('created_at', "Дата создания")->sortable();
        $grid->column('updated_at', "Дата обновления")->sortable();
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Fish::findOrFail($id));

        $show->field('img', "Аватар")->image();
        $show->field('name', "Название");
        $show->field('type',"Тип");
        $show->field('isRed', "Красный");
        $show->field('created_at', "Дата создания");
        $show->field('updated_at', "Дата обновления");

        $show->info('Энциклопедия', function ($info) {
            $info->latin("Латинское название");
            $info->other_names("Другие названия");
            $info->family("Семейство");
            $info->genus("Род");
            $info->type("Пресноводные");
            $info->lifestyle("Образ жизни");
            $info->food_type("Тип питания");
            $info->area("Ареал обитания");
            $info->appereance("Внешний вид");
            $info->habitat("Среда обитания");
            $info->food_features("Особенности питания");
            $info->reproduction("Нерест");
            $info->catches("Способы ловли");
            $info->baits("Рекомендуемое снаряжение");
        });

        $show->factors('Факторы клева', function ($factors) {
            $factors->name("Наименование");
            $factors->opt_values("Оптимальные значения");
            $factors->type("Тип");
            $factors->weight("Вес");
            $factors->units("Ед. Изм.");
        });

        $show->images('Изображения', function ($image) {
            $image->img()->image();
        });


        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Fish());

        $form->tab("Факторы клева", function ($form){
            if ($form->isCreating()){
                $form->slider("factors.temp", "Температура")->options(['max' => 30, 'min' => -30, 'from'=>0, 'to'=> 20,
                    'step' => 0.01, 'postfix' => '°C', 'type'=>'double']);
                $form->decimal("factors.temp_weight", "Вес(значимость)")->default(0.93)->help("вещественное число от 0 до 1 через .");
                $form->divider();

                $form->checkbox("factors.daytime", "Время суток")->options(["утро"=>"утро", "день"=>"день", "вечер"=>"вечер", "ночь"=>"ночь"])->stacked();
                $form->decimal("factors.daytime_weight", "Вес(значимость)")->default(0.63);
                $form->divider();

                $form->checkbox("factors.yeartime", "Время года")->options(["осень"=>"осень", "лето"=>"лето", "весна"=> "весна", "зима"=>"зима"])->stacked();
                $form->decimal("factors.yeartime_weight", "Вес(значимость)")->default(0.51);
                $form->divider();

                $form->multipleSelect("factors.weather", "Осадки")->options(["ясно"=>"ясно", "облачно"=>"облачно", "дождь"=>"дождь",
                    "гроза"=>"гроза", "снег"=>"снег", "туман"=>"туман"]);
                $form->decimal("factors.weather_weight", "Вес(значимость)")->default(0.56);
                $form->divider();

                $form->checkbox("factors.moon", "Фаза луны")->options(["новолуние"=>"новолуние", "полнолуние"=>"полнолуние",
                    "растущая луна"=>"растущая луна", "убываюшая луна"=>"убываюшая луна"])->stacked();
                $form->decimal("factors.moon_weight", "Вес(значимость)")->default(0.35);
                $form->divider();

                $form->slider("factors.wind", "Сила ветра")->options([ 'skin'=>'flat','max' => 20, 'min' => 0, 'step' => 0.01, 'postfix' => 'м/c',
                    'type'=>'double', 'from'=>0, 'to'=>10]);
                $form->decimal("factors.wind_weight", "Вес(значимость)")->default(0.30);
                $form->divider();

                $form->slider("factors.pressure", "Давление")->options(['skin'=>'sharp','max' => 1200, 'min' => 600, 'step' => 2, 'postfix' => 'мм.рт.ст',
                    'type'=>'double', 'from'=>750, 'to'=>1000]);
                $form->decimal("factors.pressure_weight", "Вес(значимость)")->default(0.21);
                $form->divider();

                $form->slider("factors.clouds", "Облачность")->options(['skin'=>'sharp','max' => 100, 'min' => 0, 'step' => 1, 'postfix' => '%',
                    'type'=>'double', 'from'=>0, 'to'=>100]);
                $form->decimal("factors.clouds_weight", "Вес(значимость)")->default(0.08);
                $form->divider();

                $form->slider("factors.humidity", "Влажность")->options(['skin'=>'sharp','max' => 100, 'min' => 0, 'step' => 1, 'postfix' => '%',
                    'type'=>'double']);
                $form->decimal("factors.humidity_weight", "Вес(значимость)")->default(0.10);
                $form->divider();

                $form->slider("factors.uvi", "УФ индекс")->options(['skin'=>'big','max' => 10, 'min' => 0, 'step' => 0.1,
                    'type'=>'double', 'from'=>0, 'to'=>100]);
                $form->decimal("factors.uvi_weight", "Вес(значимость)")->default(0.10);

            }
            if ($form->isEditing()){
                $form->hasMany('factors','Факторы', function (Form\NestedForm $form) {
                    $form->text("name", "Название");
                    $form->text("units", "Ед. Изм.");
                    $form->text("opt_values", "Оптимальные значения")->help("Оптимальные значения вводить через запятую без пробелов");
                    $form->decimal("weight", "Вес (значимость)")->help("Вещественное число (через .)");

                });
            }

        })->tab('Основная информация', function ($form) {
            if ($form->isCreating()) $form->text("fish_name", "Название")->placeholder("Название вида")->required();
            else $form->text("name", "Название")->placeholder("Название вида")->required();
            $form->image('img', "Аватар");

            $options = ["Морские"=>"Морские", "Пресноводные"=>"Пресноводные", "Проходные"=>"Проходные", "Речные"=>"Речные", "Частиковые"=>"Частиковые"];
            $form->select('type',"Тип")->options($options)->required();

            $states = [
                'on'  => ['value' => 1, 'text' => 'да', 'color' => 'danger'],
                'off' => ['value' => 0, 'text' => 'нет', 'color' => 'success'],
            ];
            $form->switch('isRed', "Красный")->states($states);
            if ($form->isCreating()) $form->multipleImage('images', "Изображения")->help("Выберите несколько изображений с зажатой клавишой Ctrl");
        })->tab('Справочная информация', function ($form) {
            $form->text("info.latin", "Латинское название");
            $form->text("info.other_names", "Другие названия");
            $form->text("info.family", "Семейство");
            $form->text("info.genus", "Род");
            $form->text("info.lifestyle", "Образ жизни");
            $form->text("info.food_type", "Тип питания");
            $form->text("info.area", "Ареал обитания");
            $form->summernote("info.appereance", "Внешний вид");
            $form->summernote("info.habitat", "Среда обитания");
            $form->summernote("info.food_features", "Особенности питания");
            $form->summernote("info.reproduction", "Размножение");
            $form->summernote("info.catches", "Способы ловли");
            $form->summernote("info.baits", "Насадки");
        });

        return $form;
    }


    public function store()
    {
        $request = request();
        $params = $request->all();

        $this->storeBasic($params, $request);
        $this->storeDetails($params);
        $this->storeFactors($params);
//        $fish->info()->save($fish_info);

    }

    private function storeBasic($params, $request)
    {
        $fish = new Fish;
        $fish->name = $params["fish_name"];
        $fish->type = $params["type"];
        $fish->isRed = $params["isRed"] == "on" ? true : false;
        if ($request->has('img')) {
            $params['img'] = $request->file('img')->store("fishes/".$fish->name, 'public');
            $fish->img = $params['img'];
        }
        $fish->save();
        if ($request->has('images')) {
            foreach($request->file('images') as $file){
                $image = new FishImg;
                $image->fish_name = $params["fish_name"];
                $image->img = $file->store("fishes/".$image->fish_name, 'public');
                $image->save();
            }
        }
    }

    private function storeDetails($params)
    {
        $params["info"]["fish_name"] = $params["fish_name"];
        FishInfo::create($params["info"]);
    }

    private function storeFactors($params)
    {
        $fish = $params["fish_name"];
        $factor_params = $params["factors"];
        $this->createFactor($fish, "Температура","Численный",  $factor_params["temp"],
            $factor_params["temp_weight"], "°C");
        $this->createFactor($fish, "Время суток", "Строковый", $factor_params["daytime"],
            $factor_params["daytime_weight"], ' ');
        $this->createFactor($fish, "Время года", "Строковый", $factor_params["yeartime"],
            $factor_params["yeartime_weight"], ' ');
        $this->createFactor($fish, "Осадки", "Строковый", $factor_params["weather"],
            $factor_params["weather_weight"], ' ');
        $this->createFactor($fish, "Фаза луны", "Строковый", $factor_params["moon"],
            $factor_params["moon_weight"], ' ');
        $this->createFactor($fish, "Сила ветра", "Численный", $factor_params["wind"],
            $factor_params["wind_weight"], 'м/c');
        $this->createFactor($fish, "Давление", "Численный", $factor_params["pressure"],
            $factor_params["pressure_weight"], 'мм.рт.ст.');
        $this->createFactor($fish, "Облачность", "Численный", $factor_params["clouds"],
            $factor_params["clouds_weight"], '%');
        $this->createFactor($fish, "Влажность", "Численный", $factor_params["humidity"],
            $factor_params["humidity_weight"], '%');
        $this->createFactor($fish, "УФ индекс", "Численный", $factor_params["uvi"],
            $factor_params["uvi_weight"], ' ');
    }

    private function createFactor($fish, $name, $type, $opt_values, $weight, $units)
    {
        if ($weight == 0) return;
        $factor = new FishFactor;
        $factor->fish_name = $fish;
        $factor->name = $name;
        $factor->type = $type;
        if ($type == "Численный"){
            $factor->opt_values =  str_replace(';', ',', $opt_values);
        } else if (count($opt_values) > 1) {
            $factor->opt_values = $opt_values[0];
            for ($i = 1; $opt_values[$i] != null; $i++)
            {
                $factor->opt_values .=  ','.$opt_values[$i];
            }
        } else {
            return;
        }
        $factor->weight = $weight;
        $factor->units = $units;
        $factor->save();
    }


}
