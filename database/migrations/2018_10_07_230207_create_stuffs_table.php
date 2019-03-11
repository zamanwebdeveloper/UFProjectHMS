<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStuffsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stuffs', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('stuff_type_id')->unsigned();
            $table->string('name');
            $table->string('mobile');
            $table->integer('age')->nullable();
            $table->tinyInteger('gender');
            $table->string('nid')->nullable();
            $table->string('degree')->nullable();
            $table->date('joining_date');
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
        Schema::drop('stuffs');
    }
}
