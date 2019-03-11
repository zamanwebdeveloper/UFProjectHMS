<?php

namespace App\Modules\Lab\Http\Controllers;

use App\Models\Doctor;
use App\Models\Lab;
use App\Models\LabReport;
use App\Models\Patient;
use App\Models\Stuff;
use App\Models\Test;
use App\Models\TestCategory;
use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Symfony\Component\HttpKernel\Client;
use App\Http\Controllers\Controller;

class LabController extends Controller
{
    public function index(){
        $tests  = Test::where('status',1)->get();
        return view("lab::lab.index", compact('tests'));
    }

    public function takeTest($id, $test_cateogry_id){
        if($test_cateogry_id == 1){
            $test_id        = $id;
            $pathologists   = Stuff::where('stuff_type_id', 4)->get();
            $doctors        = Doctor::all();


            $report_no         = LabReport::select('report_no')->orderBy('created_at','DESC')->first();

            if($report_no != null){
                $report_no = $report_no['report_no'] + 1;
                $report_no = "RENO-".str_pad($report_no, 6, '0', STR_PAD_LEFT);
            }else{
                $report_no = 1;
                $report_no = "RENO-".str_pad($report_no, 6, '0', STR_PAD_LEFT);
            }

            return view('lab::lab.blood-test', compact('pathologists','doctors','test_id', 'test_cateogry_id','report_no'));
        }
    }

    public function store(Request $request){

        $this->validate($request,[
            'report_no'         =>  'required',
            'taking_date'       =>  'required',
            'delivery_date'     =>  'required',
            'pathologist_id'    =>  'required',
        ]);

        $report_no   =   trim($request->report_no, "RENO-");

        DB::beginTransaction();

        try {

            $lab_report                         = new LabReport();
            $lab_report->report_no              = $report_no;
            $lab_report->test_id                = $request->test_id;
            $lab_report->test_category_id       = $request->test_category_id;
            $lab_report->taking_date            = date('Y-m-d', strtotime($request->taking_date));
            $lab_report->delivery_date          = date('Y-m-d', strtotime($request->delivery_date));
            $lab_report->pathologist_id         = $request->pathologist_id;
            $lab_report->reference_doctor_id    = $request->reference_doctor_id;
            $lab_report->blood_group            = $request->blood_group;
            $lab_report->amikacin               = $request->amikacin;
            $lab_report->organism_isolated      = $request->organism_isolated;
            $lab_report->hemoglobin             = $request->hemoglobin;
            $lab_report->white_blood_sell       = $request->white_blood_sell;
            $lab_report->red_blood_sell         = $request->red_blood_sell;
            $lab_report->neutrophil             = $request->neutrophil;
            $lab_report->basophil               = $request->basophil;
            $lab_report->mpv                    = $request->mpv;
            $lab_report->mcv                    = $request->mcv;
            $lab_report->mch                    = $request->mch;
            $lab_report->pdw                    = $request->pdw;
            $lab_report->summary                = $request->summary;

            $lab_report->save();


            $test = Test::find($request->test_id);
            $test->status = 2;
            $test->update();


            DB::commit();

            return redirect()
                ->route('lab_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Taken Blood test all information Successfullly');

        }catch(Exception $ex){

            DB::rollBack();

            $msg = $ex->getMessage();
            return redirect()->route('lab_index')
                ->with('alert.status', 'danger')
                ->with('alert.message', "Fail : $msg");
        }

    }

    public function edit($id){

        $pathologists   = Stuff::where('type', 4)->get();
        $doctors        = Doctor::all();
        $lab_report     = LabReport::find($id);
        $test           = Test::find($lab_report->test_id);
        return view("lab::lab.edit", compact('pathologists','doctors','lab_report','test'));
    }

    public function update(Request $request, $id){

        $this->validate($request,[
            'report_no'         =>  'required',
            'taking_date'       =>  'required',
            'delivery_date'     =>  'required',
            'pathologist_id'    =>  'required',
        ]);

        $report_no   =   trim($request->report_no, "RENO-");

        DB::beginTransaction();

        try {

            $lab_report                         = LabReport::find($id);
            $lab_report->report_no              = $report_no;
            $lab_report->test_id                = $request->test_id;
            $lab_report->test_category_id       = $request->test_category_id;
            $lab_report->taking_date            = date('Y-m-d', strtotime($request->taking_date));
            $lab_report->delivery_date          = date('Y-m-d', strtotime($request->delivery_date));
            $lab_report->pathologist_id         = $request->pathologist_id;
            $lab_report->reference_doctor_id    = $request->reference_doctor_id;
            $lab_report->blood_group            = $request->blood_group;
            $lab_report->amikacin               = $request->amikacin;
            $lab_report->organism_isolated      = $request->organism_isolated;
            $lab_report->hemoglobin             = $request->hemoglobin;
            $lab_report->white_blood_sell       = $request->white_blood_sell;
            $lab_report->red_blood_sell         = $request->red_blood_sell;
            $lab_report->neutrophil             = $request->neutrophil;
            $lab_report->basophil               = $request->basophil;
            $lab_report->mpv                    = $request->mpv;
            $lab_report->mcv                    = $request->mcv;
            $lab_report->mch                    = $request->mch;
            $lab_report->pdw                    = $request->pdw;
            $lab_report->summary                = $request->summary;

            $lab_report->update();


            $test = Test::find($request->test_id);
            $test->status = $request->status;
            $test->update();


            DB::commit();

            return redirect()
                ->route('lab_test_report_complete')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Update Successfullly');

        }catch(Exception $ex){

            DB::rollBack();

            $msg = $ex->getMessage();
            return redirect()->route('lab_complete_test')
                ->with('alert.status', 'danger')
                ->with('alert.message', "Fail : $msg");
        }

    }

    public function completeTest(){
        $tests = Test::join('lab_reports','lab_reports.test_id','tests.id')
                    ->select('tests.*','lab_reports.id as lab_report_id')
                    ->where("tests.status", 2)
                    ->get();

        return view("lab::lab.complete-test", compact('tests'));
    }

    public function testReport(){
        $tests = Test::where("status", 3)->groupBy('patient_id')->get();
        return view("lab::lab.test-report", compact('tests'));
    }

    public function testLabReportComplete($id){
        $test = Test::find($id);

        $test->status = 3;
        $test->update();

        $patient = Patient::where('id', $test['patient_id'])->first();

        //SMS

        /*$number = '88'.$patient->mobile;
        $sms = "Dear Patient PID-".$patient['id'].", Name: ".$patient['name']."Your Test Report are ready, you can collect your Report from HMS";

        $client = new Client();

        $res = $client->request('POST', 'http://api.bulksms.icombd.com/restapi/sms/1/text', [
            'headers' => [
                'Host' => 'api.bulksms.icombd.com',
                'Authorization' => 'Basic dGFuYXRhbmk6VHQxMjM0NTY=',
                'Accept' => 'application/json',
                'Content-Type' => 'application/json',
            ],

            'json' => [
                'from' => 'Friend',
                'to' => $number,
                'text' => $sms
            ]

        ]);*/

        //SMS End


        if($test->update()){
            return redirect()
                ->route('lab_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Test Report Completed Successfullly');
        }else{
            return redirect()
                ->route('lab_index')
                ->with('alert.status', 'danger')
                ->with('alert.message', 'Report not ready, Something went wrong !');
        }

    }

    public function testReportShow($id){

        $lab_reports = LabReport::join('tests','tests.id','lab_reports.test_id')
                                ->where('lab_reports.test_id', $id)
                                ->select('lab_reports.test_id','lab_reports.report_no','tests.patient_id')
                                ->groupBy('tests.patient_id')
                                ->orderBy('lab_reports.id','DESC')
                                ->limit(10)
                                ->get();


        $report   = LabReport::join('tests','tests.id','lab_reports.test_id')
                                ->where('lab_reports.test_id', $id)
                                ->select('lab_reports.*','tests.patient_id')
                                ->where('lab_reports.test_id', $id)
                                ->first();

        return view("lab::lab.show", compact('lab_reports','report'));
    }

}
