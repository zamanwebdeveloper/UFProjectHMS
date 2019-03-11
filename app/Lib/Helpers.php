<?php namespace App\Lib;

use App\Models\Bill;
use App\Models\Contact\Contact;
use App\Models\MedicineTakingSchedule;
use App\Models\Patient;
use App\Models\WardBed;
use DateTime;
use Carbon\Carbon;

use DB;
use Illuminate\Support\Facades\Auth;
use NumberFormatter;

class Helpers {

    public function patientBillPaymentStatus($id){
        $bill = Bill::select('amount','due_amount')->first();
        if($bill['amount'] == $bill['due_amount']){
            return 1;
        }else{
            return 0;
        }
    }

    public function getPatientSerial($id){
        $patient = Patient::select('serial')->where('id', $id)->first();
        return "PID-".str_pad($patient['serial'], 6, '0', STR_PAD_LEFT);
    }

    public function getPatientAge($id){
        $patient = Patient::select('age')->where('id', $id)->first();
        return $patient['age'];
    }

    public function getPatientName($id){
        $patient = Patient::select('name')->where('id', $id)->first();
        return $patient['name'];
    }

    public function medicineTakingSchedule($id){
        $medicine_schedule = MedicineTakingSchedule::select('schedule')->where('id', $id)->first();
        return $medicine_schedule['schedule'];
    }

    public function calculateBedCharge($id){

        $patient        = Patient::find($id);
        $admit_date     = new DateTime($patient['admission_date']);

        $current_time   = Carbon::now()->toDayDateTimeString();
        $current_date   = new DateTime(date("Y-m-d", strtotime($current_time)) );
        $total_day      = (integer)date_diff($admit_date,$current_date)->format("%a");
        $bed_charge     = WardBed::select('daily_charge')->where('ward_id', $patient['ward_id'])
                                    ->orWhere('id', $patient['bed_id'])
                                    ->first();

        $bed_charge     = $bed_charge['daily_charge'];
        $total_bed_charge = ($bed_charge * $total_day);
        return $total_bed_charge;
    }

}