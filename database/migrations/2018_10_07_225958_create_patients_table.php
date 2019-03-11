<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePatientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('patients', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('age');
            $table->string('email')->nullable();
            $table->integer('mobile')->nullable();
            $table->text('address')->nullable();
            $table->text('problem');
            $table->string('blood_pressure');
            $table->integer('weight')->nullable();
            $table->string('serial');
            $table->string('admit_status')->comment("1=admitted, 2=Discharged");
            $table->string('ward_id')->nullable();
            $table->string('bed_id')->nullable();
            $table->date('admission_date')->nullable();
            $table->date('discharge_date')->nullable();
            $table->integer('supervise_doctor_id')->unsigned()->nullable();
            $table->integer('test_id')->unsigned()->nullable();
            $table->integer('prescription_id')->unsigned()->nullable();
            $table->integer('patient_current_status_id')->unsigned()->nullable();
            $table->text('image')->nullable();
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
        Schema::drop('patients');
    }
}
