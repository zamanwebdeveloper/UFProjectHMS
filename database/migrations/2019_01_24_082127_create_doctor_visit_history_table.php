<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorVisitHistoryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctor_visit_histories', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('patient_id')->unsigned();
            $table->integer('doctor_id')->unsigned();
            $table->integer('summary')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });

        Schema::table('doctor_visit_histories', function(Blueprint $table) {
            $table->foreign('doctor_id')->references('id')->on('doctors')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('patient_id')->references('id')->on('patients')->onDelete('CASCADE')->onUpdate('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('doctor_visit_histories');
    }
}
