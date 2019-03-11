<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMedicineTakingScheduleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('medicine_taking_schedules', function (Blueprint $table) {
            $table->increments('id');
            $table->tinyInteger('type')->comment("1=Tablet, 2=Capsule, 3=Injection, 4=Syrup");
            $table->string('serial');
            $table->string('schedule');
            $table->rememberToken();
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
        Schema::drop('medicine_taking_schedules');
    }
}
