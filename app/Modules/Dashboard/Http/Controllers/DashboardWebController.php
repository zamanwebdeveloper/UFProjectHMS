<?php

namespace App\Modules\Dashboard\Http\Controllers;

use App\Models\Deshboard\Reminder;
use App\Models\Doctor;
use App\Models\Patient;
use App\Models\Stuff;
use App\Models\Ward;
use App\Models\WardBed;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\Bill;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class DashboardWebController extends Controller
{

    public function index()
    {
        $total_patient      = Patient::count();
        $admitted_patient   = Patient::where('admit_status', 1)->count();
        $dischared_patient  = Bill::where('status',0)->count();
        $total_doctors      = Doctor::count();
        $total_nurses       = Stuff::where('stuff_type_id',5)->count();
        $total_ward         = Ward::count();
        $total_bed          = WardBed::count();


        return view('dashboard::index', compact('total_patient','admitted_patient','dischared_patient','total_doctors','total_nurses','total_ward','total_bed' ));
    }


    public function todayreminder()
    {
       $todayreminder  =  Reminder::whereDate('reminddatetime',date('Y-m-d'))->get();
       $con =  new Concatenote();
       echo $con->todaynote($todayreminder);
       return json_encode($todayreminder );
    }

    public function reOrder()
    {
        $reorder = [];

        $in_stock = Stock::groupBy('item_id')->selectRaw('*, sum(total) as sum')->get();
        $out_stock =  InvoiceEntry::groupBy('item_id')->selectRaw('*, sum(quantity) as sum')->get();

        $item = Item::all();

        foreach ($item as $value){
            $new_in_stock = $in_stock->where('item_id', $value->id)->first();
            $new_out_stock = $out_stock->where('item_id', $value->id)->first();
            if(isset($new_in_stock) && isset($new_out_stock)){


                $after_minus = $new_in_stock->sum-$new_out_stock->sum;
                if($after_minus)
                {
                    if($after_minus<=$value->reorder_point|| empty($value->reorder_point)){
                        $reorder[$value->id][] =  $after_minus;
                        $reorder[$value->id][] =  $value->item_name;
                    }
                }
            }

        }

        //return response($reorder);
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }
}
