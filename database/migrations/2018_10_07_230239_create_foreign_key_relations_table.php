<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateForeignKeyRelationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('patients', function(Blueprint $table) {
            $table->foreign('supervise_doctor_id')->references('id')->on('doctors')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('test_id')->references('id')->on('tests')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('prescription_id')->references('id')->on('prescriptions')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('patient_current_status_id')->references('id')->on('patient_current_status')->onDelete('CASCADE')->onUpdate('CASCADE');
        });

        Schema::table('tests', function(Blueprint $table) {
            $table->foreign('patient_id')->references('id')->on('patients')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('test_category_id')->references('id')->on('test_categories')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('prescription_id')->references('id')->on('prescriptions')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('doctor_id')->references('id')->on('doctors')->onDelete('CASCADE')->onUpdate('CASCADE');
        });

        Schema::table('patient_current_status', function(Blueprint $table) {
            $table->foreign('doctor_id')->references('id')->on('doctors')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('prescription_id')->references('id')->on('prescriptions')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('patient_id')->references('id')->on('patients')->onDelete('CASCADE')->onUpdate('CASCADE');
        });

        Schema::table('doctors', function(Blueprint $table) {
            $table->foreign('department_id')->references('id')->on('departments')->onDelete('CASCADE')->onUpdate('CASCADE');
        });

        Schema::table('prescriptions', function(Blueprint $table) {
            $table->foreign('patient_id')->references('id')->on('patients')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('doctor_id')->references('id')->on('doctors')->onDelete('CASCADE')->onUpdate('CASCADE');
            $table->foreign('test_id')->references('id')->on('tests')->onDelete('CASCADE')->onUpdate('CASCADE');
        });

        Schema::table('prescription_medicines', function(Blueprint $table) {
            $table->foreign('prescriptions_id')->references('id')->on('prescriptions')->onDelete('CASCADE')->onUpdate('CASCADE');
        });

        Schema::table('doctor_chamber_days', function(Blueprint $table) {
            $table->foreign('doctor_id')->references('id')->on('doctors')->onDelete('CASCADE')->onUpdate('CASCADE');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
