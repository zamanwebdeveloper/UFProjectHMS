<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLabReportTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lab_reports', function (Blueprint $table) {
            $table->increments('id');
            $table->string('report_no');
            $table->integer('test_id')->unsigned();
            $table->integer('test_category_id')->unsigned();
            $table->date('taking_date');
            $table->date('delivery_date');
            $table->integer('pathologist_id')->unsigned();
            $table->integer('reference_doctor_id')->unsigned()->nullable();
            $table->string('blood_group')->nullable();
            $table->string('amikacin')->nullable();
            $table->string('organism_isolated')->nullable();
            $table->string('hemoglobin')->nullable();
            $table->string('white_blood_sell')->nullable();
            $table->string('red_blood_sell')->nullable();
            $table->string('neutrophil')->nullable();
            $table->string('basophil')->nullable();
            $table->string('mpv')->nullable();
            $table->string('mcv')->nullable();
            $table->string('mch')->nullable();
            $table->string('pdw')->nullable();
            $table->text('summary')->nullable();
            $table->timestamps();
        });
        Schema::table('lab_reports', function(Blueprint $table){
            $table->foreign('created_by')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('updated_by')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('lab_reports');
    }
}
