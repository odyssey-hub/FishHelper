<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFishInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fish_infos', function (Blueprint $table) {
            $table->id();
            $table->string("latin");
            $table->text("other_names");
            $table->string("family");
            $table->string("genus");
            $table->string("type");
            $table->string("lifestyle");
            $table->string("food_type");
            $table->string("area");
            $table->text("appereance");
            $table->text("habitat");
            $table->text("food_features");
            $table->text("reproduction");
            $table->text("catches");
            $table->text("baits");
            $table->text("facts");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('fish_infos');
    }
}
