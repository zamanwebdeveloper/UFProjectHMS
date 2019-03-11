<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBillEntryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bill_entry', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('bill_id')->unsigned();;
            $table->integer('test_id')->unsigned();
            $table->integer('prescription_id')->unsigned();
            $table->double('amount');
            $table->string('date');
            $table->string('bill_type')->nullable();
            $table->rememberToken();
            $table->timestamps();
        });

        Schema::table('bill_entry', function(Blueprint $table) {
            $table->foreign('bill_id')->references('id')->on('bill')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('test_id')->references('id')->on('tests')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('prescription_id')->references('id')->on('prescriptions')->onDelete('CASCADE')->onUpdate('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('bill_entry');
    }
}
