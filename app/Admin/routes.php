<?php

use Encore\Admin\Facades\Admin;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {
    $router->get('/', 'HomeController@index')->name('home');

    $router->resource('users', UserController::class);
    $router->resource('locations', LocationController::class);
    $router->resource('subjects', SubjectController::class);
    $router->resource('water_types', WaterTypeController::class);
    $router->resource('fishes', FishController::class);
    $router->resource('catches', CatchController::class);
    $router->resource('marks', PlacemarkController::class);

    /*custom*/
    $router->post("water_types/addWaterType", [\App\Admin\Controllers\WaterTypeController::class, "addWaterType"]);
});


