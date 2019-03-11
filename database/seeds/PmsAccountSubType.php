<?php

use Illuminate\Database\Seeder;

class PmsAccountSubType extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = Faker\Factory::create();
        
             DB::table('pms_account_sub_type')->insert([
                'id' => 1,
                'pms_account_type_id' => 1,
                'title' => 'Other Asset',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 2,
                'pms_account_type_id' => 1,
                'title' => 'Account Receivable',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 3,
                'pms_account_type_id' => 1,
                'title' => 'Other Current Asset',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 4,
                'pms_account_type_id' => 1,
                'title' => 'Cash',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 5,
                'pms_account_type_id' => 1,
                'title' => 'Bank',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 6,
                'pms_account_type_id' => 1,
                'title' => 'Fixed Asset',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]); 
             DB::table('pms_account_sub_type')->insert([
                'id' => 7,
                'pms_account_type_id' => 1,
                'title' => 'Stock',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 8,
                'pms_account_type_id' => 2,
                'title' => 'Other Current Liability',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
      
             DB::table('pms_account_sub_type')->insert([
                'id' => 10,
                'pms_account_type_id' => 2,
                'title' => 'Long Term Liability',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 11,
                'pms_account_type_id' => 2,
                'title' => 'Other Liability',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 12,
                'pms_account_type_id' => 2,
                'title' => 'Accounts payable',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 13,
                'pms_account_type_id' => 3,
                'title' => 'Equity',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 14,
                'pms_account_type_id' => 4,
                'title' => 'Income',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 15,
                'pms_account_type_id' => 4,
                'title' => 'Other Income',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 16,
                'pms_account_type_id' => 5,
                'title' => 'Expense',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 17,
                'pms_account_type_id' => 5,
                'title' => 'Cost of Goods Sold',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
             DB::table('pms_account_sub_type')->insert([
                'id' => 18,
                'pms_account_type_id' => 5,
                'title' => 'Other Expense',
                'created_at' => $data->dateTime($max = 'now'),
                'updated_at' => $data->dateTime($max = 'now'),
            ]);
    }
}
