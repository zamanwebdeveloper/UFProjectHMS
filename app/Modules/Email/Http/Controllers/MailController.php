<?php

namespace App\Modules\Email\Http\Controllers;


use App\Models\Email\Email;
use App\Models\OrganizationProfile\OrganizationProfile;
use App\Models\Patient;
use DateTime;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;
use App\Models\Bill;
use App\Models\BillEntry;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

class MailController extends Controller
{
    public function mailView($id){
        $patient = Patient::find($id);
        return view('email::bill.mailView',compact('patient'));
    }

    public function mailSend(Request $request,$id){

        $validator = Validator::make($request->all(), [
            'email_address' => 'required',
            'subject' => 'required',
            'details' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect::back()->withErrors($validator);
        }


        $bill                   = Bill::find($id);
        $OrganizationProfile    = OrganizationProfile::find(1);
        $bill_entry             = BillEntry::where('bill_id', $id)->get();        

        $pdf = PDF::loadView('email::bill.pdf',compact('OrganizationProfile','bill','bill_entry'));
        return $pdf->stream('result.pdf');
        $path=uniqid().'.pdf';
        $filename = public_path('path/'.$path);
        $pdf->save($filename);

        config(['mail.from.name' => $OrganizationProfile->display_name]);

        $email              = new Email();
        $email->to          = $request->email_address;
        $email->subject     = $request->subject;
        $email->details     = $request->details;
        $email->file        = $path;
        $email->created_by  = Auth::user()->id;
        $email->updated_by  = Auth::user()->id;
        $email->save();

        Mail::send('email::bill.email',array('email'=>$email,'logo'=>$OrganizationProfile),function($message) use ($pdf){

            $message->to(Input::get('email_address'))->subject(Input::get('subject'));
            $message->attachData($pdf->output(), "Bill.pdf");

        });

        return redirect()->back()->with('msg','Email sent successfully.Pleas Check your Email');
    }
}
