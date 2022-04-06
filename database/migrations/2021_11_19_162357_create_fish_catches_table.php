<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFishCatchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('fish_catches', function (Blueprint $table) {
            $table->id();
            $table->string("name");
            $table->string("img");
            $table->dateTime("date");
            $table->float("weight");
            $table->text("note");
            $table->integer("bait_id");
            $table->integer("mark_id");
            $table->integer("fish_id");
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
        Schema::dropIfExists('fish_catches');
    }
}
