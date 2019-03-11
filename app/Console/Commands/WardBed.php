<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use DateTime;
use Carbon\Carbon;
use App\Models\Patient;
use Auth;

class WardBed extends Command
{

    protected $signature = 'ward:bed';

    protected $description = 'Ward Bed Charge add';


    public function __construct()
    {
        parent::__construct();
    }


    public function handle()
    {
        $today      = Carbon::now()->format('Y-m-d');
        $patients   = Patient::select('id','name','ward_id','bed_id','admission_date')
                                ->where('admit_status', 1)
                                ->get();
        if($patients){
            for($i = 0; $i < $patients->count(); $i++){

                $ward_bed = WardBed::select('daily_charge')->find($patients[$i]->bed_id);

                $bill         = Bill::select('bill_number')->orderBy('created_at','DESC')->first();

                if($bill != null){
                    $bill = $bill['bill_number'] + 1;
                    $bill_number = "Bill-".str_pad($bill, 6, '0', STR_PAD_LEFT);
                }else{
                    $bill = 1;
                    $bill_number = "Bill-".str_pad($bill, 6, '0', STR_PAD_LEFT);
                }

                $bill                   = Bill::select('amount','due_amount')->where('patient_id', $patients[$i]->id)->first();
                $bill->patient_id       = $patients[$i]->id;
                $bill->bill_number      = $bill_number;
                $bill->amount           = $bill['amount'] + $ward_bed['daily_charge'];
                $bill->due_amount       = $bill['due_amount'] + $ward_bed['daily_charge'];
                $bill->bill_date        = $today;
                $bill->due_date         = $today;
                $bill->update();

                if($bill->save()){

                    $bill_entry             = new BillEntry();
                    $bill_entry->bill_id    = $bill->id;
                    $bill_entry->amount     = $ward_bed['daily_charge'];
                    $bill_entry->date       = $today;
                    $bill_entry->bill_type  = "Bed Charge";
                    $bill_entry->save();

                }


            }
        }

    }
}
