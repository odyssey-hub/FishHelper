<?php

namespace App\Admin\Controllers;

use App\Models\Mark;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PlacemarkController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Mark';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Mark());

        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('description', __('Description'));
        $grid->column('coorX', __('CoorX'));
        $grid->column('coorY', __('CoorY'));
        $grid->column('user_id', __('User id'));
        $grid->column('location_id', __('Location id'));

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
        $show = new Show(Mark::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('description', __('Description'));
        $show->field('coorX', __('CoorX'));
        $show->field('coorY', __('CoorY'));
        $show->field('user_id', __('User id'));
        $show->field('location_id', __('Location id'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Mark());

        $form->text('name', __('Name'));
        $form->text('description', __('Description'));
        $form->decimal('coorX', __('CoorX'));
        $form->decimal('coorY', __('CoorY'));
        $form->number('user_id', __('User id'));
        $form->number('location_id', __('Location id'));

        return $form;
    }
}
