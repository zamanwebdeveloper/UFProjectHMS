<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateContactTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contact', function (Blueprint $table) {
            $table->increments('id');

            $table->string('display_name')->nullable();
            $table->string('serial')->nullable()->uniquer();
            $table->string('propietor')->nullable();
            $table->string('outlet')->nullable();
            $table->text('address')->nullable();
            $table->integer('road_id')->unsigned()->nullable();
            $table->string('mobile')->nullable();

            $table->string('office_address')->nullable();
            $table->string('office_phone')->nullable();
            $table->string('rsm_mobile')->nullable();
            $table->string('tsm_mobile')->nullable();
            $table->string('sr_mobile')->nullable();

            $table->string('employee_designation')->nullable();
            $table->string('employee_address')->nullable();
            $table->string('employee_phone')->nullable();
            $table->string('employee_nid')->nullable();
            $table->string('employee_reference')->nullable();
            $table->string('employee_mobile')->nullable();


            $table->text('note')->nullable();
            $table->text('image')->nullable();
            $table->integer('branch_id')->nullable()->unsigned();
            $table->integer('account_id')->nullable()->unsigned();
            $table->integer('contact_category_id')->unsigned();
            $table->integer('created_by')->unsigned();
            $table->integer('updated_by')->unsigned();
            $table->timestamps();
        });

        Schema::table('contact', function(Blueprint $table){
            $table->foreign('account_id')->references('id')->on('account')->onDelete('set null')->onUpdate('cascade');
            $table->foreign('branch_id')->references('id')->on('branch')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('contact_category_id')->references('id')->on('contact_category')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::drop('contact');
    }
}
