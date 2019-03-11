<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePrescriptionMedicineTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prescription_medicines', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('prescription_id')->unsigned()->nullable();
            $table->string('medicine_name');
            $table->tinyInteger('medicine_type')->comment('1=tablet, 2=capsule, 3=injection, 4=saline, 5=syrup');
            $table->string('dose')->nullable();
            $table->string('taking_time');
            $table->string('duration');
            $table->date('date');
            $table->text('advise');
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
        Schema::drop('prescription_medicines');
    }
}
