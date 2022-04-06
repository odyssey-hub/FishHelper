<?php

namespace App\Admin\Controllers;

use App\Models\Fish;
use App\Models\Location;
use App\Models\LocationImg;
use App\Models\Subject;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class LocationController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Водоемы';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Location());
        $grid->filter(function($filter){
            $filter->disableIdFilter();
            $filter->like('name', 'Название');
            $filter->equal('type', "Тип")->select($this->getWaterTypes());
            $filter->between('square', "Площадь");
            $filter->between('depth', "Глубина");
            $filter->in('subject', "Субъект")->multipleSelect(['Волгоградская обл.' => 'Волгоградская обл.']);
            $filter->equal('isRed', "Ловля запрещена")->radio([
                0    => 'Да',
                1    => 'Нет',
            ]);

        });

        $grid->column('id', __('Id'))->sortable();
        $grid->column('name', "Название")->sortable();
        $grid->column('img', "Изображение");
        $grid->column('type', "Тип")->sortable();
        $grid->column('description', "Описание")->display(function($text) {
            return Str::limit($text, 200, '...');
        });;
        $grid->column('square', "Площадь")->sortable();
        $grid->column('depth',"Средняя глубина")->sortable();
        $grid->column('subject',"Субъект")->sortable();
        $grid->column('isRed', "Ловля запрещена")->display(function($value) {
            if ($value) return "<span style='color:red'>да</span>";
            else return "нет";
        })->sortable();
        $grid->column('coorX', "Широта");
        $grid->column('coorY', "Долгота");
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
        $show = new Show(Location::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', "Название");
        $show->field('img', "Изображение")->image();
        $show->field('type', "Тип");
        $show->field('description', "Описание");
        $show->field('square', "Площадь");
        $show->field('depth',"Средняя глубина");
        $show->field('subject',"Субъект");
        $show->field('isRed', "Ловля запрещена");
        $show->field('coorX', "Широта");
        $show->field('coorY', "Долгота");

        $show->imgs('Изображения', function ($image) {
            $image->img()->image();
        });

        $show->fishes('Обитаемые рыбы', function ($fish) {
            $fish->name();
            $fish->img()->image();
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
        $form = new Form(new Location());
        $form->text('name', "Название")->placeholder("Название водоема")->required();
        $form->select('type', "Тип")->options($this->getWaterTypes())->required();
        $form->text('subject',"Субъект")->datalist($this->getSubjects())->required();
        $form->latlong('coorX', 'coorY', 'Координаты')->default(['lat' =>  48.8121, 'lng' => 44.7655])->zoom(10)->required();

        $states = [
            'on'  => ['value' => 1, 'text' => 'да', 'color' => 'danger'],
            'off' => ['value' => 0, 'text' => 'нет', 'color' => 'success'],
        ];
        $form->switch('isRed', "Ловля запрещена")->states($states);

        $form->summernote('description', "Описание");
        $form->decimal('square', "Площадь")->placeholder("Площадь (км2)")->help("Вещественное число");
        $form->decimal('depth',"Средняя глубина")->placeholder("Глубина (м)")->help("Вещественное число");

        $form->multipleSelect('fishes','Обитаемые рыбы')->options(Fish::all()->pluck('name', 'name'));

        $form->image('img', "Аватарка")->help("форматы jpg, jpeg, png. Не более 2МБ");

        if($form->isCreating()){
            $form->multipleImage('imgs', "Изображения")->help("Выберите несколько изображений с зажатой клавишой Ctrl");
        }
        return $form;
    }

    public function store()
    {
        $request = request();
        $params = $request->all();

        $location = new Location();
        $location->name = $params["name"];
        $location->type = $params["type"];
        $location->subject = $params["subject"];
        $location->coorX = round($params["coorX"], 6);
        $location->coorY = round($params["coorY"], 6);
        $location->isRed = $params["isRed"] == "on" ? true : false;

        if ($request->has("description")){
            $location->description = $params["description"];
        }
        if ($request->has("square")){
            $location->square = $params["square"];
        }
        if ($request->has("depth")){
            $location->depth = $params["depth"];
        }
        if ($request->has('img')) {
            $params['img'] = $request->file('img')->store("locations/".$location->name, 'public');
            $location->img = $params['img'];
        }

        $location->save();

        if ($request->has('imgs')) {
            $images = array();
            foreach($request->file('imgs') as $file){
                $image = new LocationImg;
                $image->img = $file->store("locations/".$location->name, 'public');
                $images[] = $image;
            }
            $location->imgs()->saveMany($images);
        }

        if ($request->has("fishes") && $request["fishes"][0] != null){
            $fishes = array();
           foreach($params["fishes"] as $fish_name) {
               if ($fish_name == null) break;
               $fish = Fish::find($fish_name);
               $fishes[] = $fish;
           }
            $location->fishes()->saveMany($fishes);
        }

    }



    private function getWaterTypes()
    {
        $types = DB::Table("water_types")->get("name");
        $converted = array();
        foreach ($types as $type){
            $converted[$type->name] = $type->name;
        }
        return $converted;
    }

    private function getSubjects()
    {
        $subjects = DB::Table("subjects")->get();
        $converted = $subjects->mapWithKeys(function ($item, $key) {
            $key = $item->name;
            return [$key=> $key];
        });
        return $converted;
    }
}
