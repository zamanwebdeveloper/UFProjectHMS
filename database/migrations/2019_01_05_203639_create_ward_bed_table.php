<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWardBedTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ward_beds', function (Blueprint $table) {
            $table->increments('id');
            $table->string('bed_no');
            $table->integer('ward_id')->unsigned();
            $table->integer('daily_charge');
            $table->rememberToken();
            $table->timestamps();
        });

        Schema::table('wards', function(Blueprint $table) {
            $table->foreign('ward_id')->references('id')->on('wards')->onDelete('CASCADE')->onUpdate('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('ward_beds');
    }
}
