<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientCurrentStatusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patient_current_status', function (Blueprint $table) {
            $table->increments('id');
            $table->text('symptom');
            $table->text('status');
            $table->integer('patient_id')->unsigned()->nullable();
            $table->integer('prescription_id')->unsigned()->nullable();
            $table->integer('doctor_id')->unsigned()->nullable();
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
        Schema::drop('patient_current_status');
    }
}
