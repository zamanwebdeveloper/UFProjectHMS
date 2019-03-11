<?php

use Illuminate\Database\Seeder;

class ExpenseSectorSeeder extends Seeder
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

        DB::table('expensesector')->insert([
        	'id' => '1',
            'title' => 'Agent Advance',
            'summary' => '',
            'created_by' => $data->numberBetween(1,1),
            'updated_by' => $data->numberBetween(1,1),
            'account_id' => '31',
            'created_at' => $data->dateTime($max = 'now'),
            'updated_at' => $data->dateTime($max = 'now'),
        ]);
    }
}
