<?php

namespace App\Admin\Controllers;

use App\Models\FishCatch;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CatchController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'FishCatch';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new FishCatch());

        $grid->column('id', __('Id'));
        $grid->column('name', "Название");
        $grid->column('img', "Изображение")->image();
        $grid->column('date', "Дата");
        $grid->column('weight', "Вес");
        $grid->column('fish', "Вид рыбы");
        $grid->column('user_id',  "Пользователь");

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
        $show = new Show(FishCatch::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('img', __('Img'));
        $show->field('date', __('Date'));
        $show->field('weight', __('Weight'));
        $show->field('fish', __('Fish'));
        $show->field('user_id', __('User id'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new FishCatch());

        $form->text('name', __('Name'));
        $form->image('img', __('Img'));
        $form->datetime('date', __('Date'))->default(date('Y-m-d H:i:s'));
        $form->decimal('weight', __('Weight'));
        $form->text('fish', __('Fish'));
        $form->number('user_id', __('User id'));

        return $form;
    }
}
