<?php

namespace App\Modules\Test\Http\Controllers;

use App\Models\Doctor;
use App\Models\Patient;
use App\Models\Prescription;
use App\Models\TestCategory;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class TestController extends Controller
{
    public function index(){

        return view("test::test.index");
    }

    public function create($id){
        $patients       = Patient::all();
        $patient        = Patient::find($id);
        $doctors        = Doctor::all();
        $test_category  = TestCategory::all();
        $prescriptions  = Prescription::where('patient_id', $id)->get();

        return view("test::test.create", compact('patients','patient','doctors', 'test_category','prescriptions'));
    }

    public function store(Request $request){

        $this->validate($request, [
           'patient_id'             =>  'required',
           'doctor_id'              =>  'required',
           'test_category_id.*'     =>  'required',
           'test_name.*'            =>  'required',
           'body_part.*'            =>  'required',
        ]);

        DB::beginTransaction();

        try {

            for($j=0; $j < count($request->test_category_id); $j++) {

                $test                       = new Test();
                $test->patient_id           = $request->patient_id;
                $test->doctor_id            = $request->doctor_id;
                $test->test_name            = $request->test_name[$j];
                $test->test_category_id     = $request->test_category_id[$j];
                $test->prescription_id      = $request->prescription_id;
                $test->body_part            = $request->body_part[$j];
                $test->charge               = $request->amount[$j];
                $test->status               = 1;

                $test->save();
            }

            if($test->save()){

                $bill = Bill::select('amount','due_amount','id')->where('patient_id', $request->patient_id)->first();

                if($bill != null){

                    $bill->amount       = $bill['amount'] + $request->total_value;
                    $bill->due_amount   = $bill['due_amount'] + $request->due_amount;
                    $bill->due_date     = date('Y-m-d', strtotime($request->date));
                    $bill->update();

                    if($bill->update()){

                        $bill_entry             = new BillEntry();
                        $bill_entry->bill_id    = $bill['id'];
                        $bill_entry->amount     = ($request->total_value - $request->due_amount);
                        $bill_entry->date       = date('Y-m-d', strtotime($request->date));
                        $bill_entry->bill_type  = "Test Charge";

                        $bill_entry->save();

                    }

                }

            }

            DB::commit();

            return redirect()
                ->route('test_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Created Successfullly');

        }catch(Exception $ex){

            DB::rollBack();

            $msg = $ex->getMessage();
            return redirect()->route('test_index')
                            ->with('alert.status', 'danger')
                            ->with('alert.message', "Fail : $msg");
        }
    }

}
