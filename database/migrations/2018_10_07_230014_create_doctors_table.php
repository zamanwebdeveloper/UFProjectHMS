<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDoctorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doctors', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email');
            $table->string('mobile');
            $table->string('degree');
            $table->string('designation')->nullable();
            $table->string('doctor_type')->comment('1=Duty Doctor, 2=Supervice Doctor');
            $table->integer('department_id')->unsigned()->nullable();
            $table->text('specialization');
            $table->tinyInteger('gender')->comment('0=Male, 1=Female');
            $table->tinyInteger('status')->comment('0=active, 1=deactive');
            $table->integer('visit');
            $table->text('address');
            $table->text('image');
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
        Schema::drop('doctors');
    }
}
