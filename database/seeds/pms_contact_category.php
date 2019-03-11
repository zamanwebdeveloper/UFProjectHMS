<?php

use Illuminate\Database\Seeder;

class pms_contact_category extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data = Faker\Factory::create();

        DB::table('pms_contact_category')->insert([
            'id' => 1,
            'name' => 'Account Payable',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);
        DB::table('pms_contact_category')->insert([
            'id' => 2,
            'name' => 'Account Receivable',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);
    }
}
