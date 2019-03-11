<?php

use Illuminate\Database\Seeder;

class PmsAccountType extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = Faker\Factory::create();
        
              DB::table('pms_account_type')->insert([
                'id' => 1,
                'title' => 'Assets',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
              DB::table('pms_account_type')->insert([
                'id' => 2,
                'title' => 'Liability',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
                DB::table('pms_account_type')->insert([
                'id' => 3,
                'title' => 'Equity',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
                  DB::table('pms_account_type')->insert([
                'id' => 4,
                'title' => 'Income',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
                    DB::table('pms_account_type')->insert([
                'id' => 5,
                'title' => 'Expense',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
    }
}
