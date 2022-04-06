<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ForecastingController;
use App\Http\Controllers\LocationsCatalogController;
use App\Http\Controllers\SearchPlacesController;
use App\Http\Controllers\FishCatalogController;
use App\Http\Controllers\User\BaitsController;
use App\Http\Controllers\User\JournalController;
use App\Http\Controllers\User\MapController;
use App\Http\Controllers\AutocompleteController;
use App\Http\Controllers\WeatherController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes([
    'reset' => true,
    'confirm' => false,
    'verify' => false,
]);

Route::get('/', function () {
      return redirect("fishes");
});

Route::prefix("locations")->group(function (){
    Route::get('/', [LocationsCatalogController::class, "index"])->name("locations");
    Route::get('/{id}', [LocationsCatalogController::class, "item"])->name("locations.item");
});


Route::prefix("fishes")->group(function(){
    Route::get('/', [FishCatalogController::class, "index"])->name("fishes");
    Route::get('/{name}', [FishCatalogController::class, "item"])->name("fishes.item");
});


Route::middleware("auth")->group(function (){
    Route::get('/forecasting', [ForecastingController::class, "index"])->name("forecast");
    Route::get('/search', [SearchPlacesController::class, "index"])->name("search");

    Route::prefix("my_map")->group(function (){
        Route::get('/', [MapController::class, "index"])->name("map");
        Route::get('/mark_fishes', [MapController::class, "getFishesForMark"])->name("map.mark");
        Route::get('/locations_fishes', [MapController::class, "getFishesForLocation"])->name("map.locations");
        Route::get('/find_mark', [MapController::class,"getMark"])->name("map.find");

        Route::post("/store", [MapController::class, "store"])->name("map.store");
        Route::post("/update", [MapController::class, "update"])->name("map.update");
        Route::post("/destroy", [MapController::class, "destroy"])->name("map.destroy");
    });

    Route::prefix("journal")->group(function (){
        Route::get('/', [JournalController::class, "index"])->name("journal");
        Route::put("/store", [JournalController::class, "store"])->name("journal.store");
        Route::put("/update", [JournalController::class, "update"])->name("journal.update");
        Route::delete("/destroy", [JournalController::class, "destroy"])->name("journal.destroy");
    });

    Route::prefix("baits")->group(function (){
        Route::get('/', [BaitsController::class, "index"])->name("baits");
        Route::post("/store", [BaitsController::class, "store"])->name("baits.store");
        Route::put("/update", [BaitsController::class, "update"])->name("baits.update");
        Route::delete("/destroy", [BaitsController::class, "destroy"])->name("baits.destroy");
    });

    Route::prefix("weather")->group(function (){
        Route::get('/', [WeatherController::class, "index"])->name("weather");
        Route::get('/date', [WeatherController::class, "getCurrentWeather"])->name("weather.date");
    });
});


Route::prefix("auth")->group(function (){
    Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register_form');
    Route::get("/login", [LoginController::class, "showLoginForm"])->name("login_form");
    Route::get("/logout", [LoginController::class, "logout"])->name("logout");
});


//Route::view("/weather", "weather/index")->name("weather");
//Route::get('/weather/get', [WeatherController::class, "index"])->name("weather.get");
//Route::get('/journal', '@index');

Route::prefix('autocomplete')->group(function (){
    Route::get("/fishes", [AutocompleteController::class, "getFishes"]);
    Route::get("/fishes_not_red", [AutocompleteController::class, "getFishesNotRed"]);
    Route::get("/locations", [AutocompleteController::class, "getLocations"]);
    Route::get("/location_coords", [AutocompleteController::class, "getCoordsForLocation"]);
    Route::get("/locations_subject", [AutocompleteController::class, "getLocationsForSubject"]);
    Route::get("/subjects", [AutocompleteController::class, "getSubjects"]);

    Route::prefix("user")->group(function (){
        Route::get("/locations", [AutocompleteController::class, "getLocationsForUser"]);
        Route::get("/locations_subject", [AutocompleteController::class, "getLocationsForSubjectUser"]);
        Route::get("/fishes", [AutocompleteController::class, "getFishesForUser"]);
        Route::get("/baits", [AutocompleteController::class, "getBaitsForUser"]);
        Route::get("/marks", [AutocompleteController::class, "getMarksForUser"]);
        Route::get("/catches", [AutocompleteController::class, "getCatchNamesForUser"]);
    });

});


Route::get("/test", [\App\Http\Controllers\Test\TestController::class, "index"]);





