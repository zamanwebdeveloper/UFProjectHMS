<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBillFreeEntryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bill_free_entry', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('bill_id')->unsigned();
            $table->integer('bill_entry_id')->unsigned()->nullable();
            $table->integer('special_offer_id')->unsigned()->nullable();
            $table->integer('product_id')->unsigned();
            $table->double('total_quantity')->nullable();
            $table->double('receivable_quantity')->nullable();
            $table->integer('created_by')->unsigned();
            $table->integer('updated_by')->unsigned()->nullable();
            $table->timestamps();
        });

        Schema::table('bill_free_entry', function(Blueprint $table){
            $table->foreign('bill_id')->references('id')->on('bill')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('bill_entry_id')->references('id')->on('bill_entry')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('special_offer_id')->references('id')->on('special_offers')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('product_id')->references('id')->on('item')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('bill_free_entry');
    }
}
