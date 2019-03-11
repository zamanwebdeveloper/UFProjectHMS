<?php

namespace App\Modules\Bill\Http\Controllers;

use Validator;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;
use App\Models\Bill;
use App\Models\BillEntry;
use App\Models\OrganizationProfile\OrganizationProfile;
use Illuminate\Support\Facades\Auth;
use Response;
use Symfony\Component\HttpKernel\Client;


class BillWebController extends Controller
{
    public function index()
    {
        $bills = Bill::all();
        return view('bill::bill.index', compact('bills'));
    }

    public function show($id){

        $bill                   = Bill::find($id);
        $OrganizationProfile    = OrganizationProfile::find(1);
        $bill_entry             = BillEntry::where('bill_id', $id)->get();

        return view('bill::bill.show', compact('OrganizationProfile','bill', 'bill_entry'));
    }

    public function pay($bill_id, $patient_id){

        $bill   = Bill::find($bill_id);
        return view('bill::bill.pay', compact('bill','patient_id'));
    }



    public function update(Request $request, $id)
    {
        $bill = Bill::select('amount','due_amount')->where('patient_id', $request->patient_id)->where('id', $id)->first();

        $bill->due_amount   = $bill->due_amount - $request->paid_amount;
        $bill->update();

        if($bill->update()){

            //SMS
            /*$number = '88'.$request->mobile;
            $sms = "Your ID is PID-".$request->patient_id." Tk,Your Total Bill is ".$bill['amount']." 
                    and Successfully Paid ".$request->paid_amount." Tk Now Due Amount is ".$bill->due_amount." Tk";

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
        }

        if($bill->due_amount == 0){

            $bill           = Bill::find($id);
            $bill->status   = 0;
            $bill->update();

            return redirect()
                ->route('bil_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Due Amount Paid Successfullly');
        }else{
            return redirect()
                ->route('bil_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Paid Successfullly, but you have Due '.$bill->due_amount."BDT");
        }
    }
}
