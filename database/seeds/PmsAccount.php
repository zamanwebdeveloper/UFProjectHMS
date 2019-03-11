<?php

use Illuminate\Database\Seeder;

class PmsAccount extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = Faker\Factory::create();

        DB::table('pms_account')->insert([
            'id' => 1,
            'pms_account_sub_type_id' => 3,
            'required' => 1,
            'title' => 'Advance Payment',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);

        DB::table('pms_account')->insert([
            'id' => 2,
            'pms_account_sub_type_id' => 4,
            'required' => 1,
            'title' => 'Cash',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);
        DB::table('pms_account')->insert([
            'id' => 3,
            'pms_account_sub_type_id' => 12,
            'required' => 1,
            'title' => 'Account Payable',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);
        DB::table('pms_account')->insert([
            'id' => 4,
            'pms_account_sub_type_id' => 2,
            'required' => 1,
            'title' => 'Account Receivable',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);

        DB::table('pms_account')->insert([
            'id' => 5,
            'pms_account_sub_type_id' => 14,
            'required' => 1,
            'title' => 'Site Income',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);

        DB::table('pms_account')->insert([
            'id' => 6,
            'pms_account_sub_type_id' => 16,
            'required' => 1,
            'title' => 'Emp Salary',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);


    }
}
