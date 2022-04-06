<?php

namespace App\Admin\Controllers;

use App\Models\WaterType;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use http\Env\Request;

class WaterTypeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Типы водоемов';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new WaterType());

        $grid->column('name', "Наименование");

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
        $show = new Show(WaterType::findOrFail($id));

        $show->field('name', "Наименование");

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new WaterType());
//        $form->setAction('addWaterType');
        $form->text('name', "Наименование");

        return $form;
    }

    public function store()
    {
        $request = request();
        $water = new WaterType;
        $water->name = $request["name"];
        $water->save();
    }

    public function addWaterType(\Illuminate\Http\Request $request)
    {
        $water = new WaterType;
        $water->name = $request["name"];
        $water->save();
        return route("admin");
    }
}
