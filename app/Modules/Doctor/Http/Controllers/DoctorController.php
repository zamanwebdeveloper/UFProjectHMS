<?php

namespace App\Modules\Doctor\Http\Controllers;

use App\Models\Days;
use App\Models\Department;
use App\Models\DoctorChamber;
use App\Models\Patient;
use App\Models\Prescription;
use Illuminate\Http\Request;
use App\Models\Doctor;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use PhpParser\Comment\Doc;

class DoctorController extends Controller
{
    public function index(){
        $doctors  =   Doctor::all();
        return view('doctor::index', compact('doctors'));
    }

    public function create(){
        $departments    = Department::all();
        $days           = Days::all();
        return view('doctor::create',compact('departments','days'));
    }

    public function store(Request $request){

        $this->validate($request,[

            'department_id'     =>  'required',
            'name'              =>  'required|min:5|max:35',
            'mobile'            =>  'required|numeric',
            'email'             =>  'required',
            'specialization'    =>  'required',
            'visit'             =>  'required',
            'chamber_day_id.*'  =>  'required',
            'shift.*'           =>  'required',
            'start_time.*'      =>  'required',
            'end_time.*'        =>  'required',

        ]);

        try {

            $doctor                 = new Doctor();

            $doctor->name           = $request->name;
            $doctor->email          = $request->email;
            $doctor->mobile         = $request->mobile;
            $doctor->degree         = $request->degree;
            $doctor->designation    = $request->designation;
            $doctor->doctor_type    = $request->doctor_type;
            $doctor->department_id  = $request->department_id;
            $doctor->specialization = $request->specialization;
            $doctor->status         = 0;
            $doctor->visit          = $request->visit;
            $doctor->address        = $request->address;

            if($request->hasFile('image')){
                $image          = $request->file('image');
                $image_name     = time().$image->getClientOriginalName();
                $fileurl        = $image->move('doctor/', $image_name);
                $doctor->image  = $fileurl;
            }
            $doctor->save();

            if($doctor->save()){

                for($i=0; $i< count($request->day_id); $i++){

                    $doctor_chamber_day                     = new DoctorChamber();
                    $doctor_chamber_day->doctor_id          = $doctor->id;
                    $doctor_chamber_day->day_id             = $request['day_id'][$i];
                    $doctor_chamber_day->shift              = $request['shift'][$i];
                    $doctor_chamber_day->start_time         = $request['start_time'][$i];
                    $doctor_chamber_day->end_time           = $request['end_time'][$i];
                    $doctor_chamber_day->save();
                }
            }

            return redirect()
                ->route('doctor_index')
                ->with('alert.status', 'success')
                ->with('alert.message','Created Successfullly');

        }

        catch(Exception $e) {
            return redirect()
                ->route('doctor_create')
                ->with('alert.status', 'danger')
                ->with('alert.message','Not Created'.$e->getMessage());
        }
    }

    public function edit($id){
        $departments    = Department::all();
        $days           = Days::all();
        $doctor         = Doctor::find($id);
        $chamber_days   = DoctorChamber::where('doctor_id', $id)->get();

        return view('doctor::edit',compact( 'departments','days','doctor','chamber_days'));
    }

    public function update(Request $request, $id){

        $this->validate($request,[

            'department_id'     =>  'required',
            'name'              =>  'required|min:5|max:35',
            'mobile'            =>  'required|numeric',
            'email'             =>  'required',
            'specialization'    =>  'required',
            'visit'             =>  'required',
            'chamber_day_id.*'  =>  'required',
            'shift.*'           =>  'required',
            'start_time.*'      =>  'required',
            'end_time.*'        =>  'required',

        ]);

        try {

            $doctor                 = Doctor::find($id);

            $doctor->name           = $request->name;
            $doctor->email          = $request->email;
            $doctor->mobile         = $request->mobile;
            $doctor->degree         = $request->degree;
            $doctor->designation    = $request->designation;
            $doctor->doctor_type    = $request->doctor_type;
            $doctor->department_id  = $request->department_id;
            $doctor->specialization = $request->specialization;
            $doctor->status         = $request->status;
            $doctor->visit          = $request->visit;
            $doctor->address        = $request->address;

            if($request->hasFile('image')){

                $image          = $request->file('image');
                $image_name     = time().$image->getClientOriginalName();
                $fileurl        = $image->move('doctor/', $image_name);
                $doctor->image  = $fileurl;
            }

            $doctor->update();

            if($doctor->update()){
                if(isset($request->day_id) && count($request->day_id) > 0) {

                    $delete_doctor_chamber = DoctorChamber::where('doctor_id', $id)->delete();

                    for ($i = 0; $i < count($request->day_id); $i++) {

                        $doctor_chamber_day                 = new DoctorChamber();
                        $doctor_chamber_day->doctor_id      = $doctor->id;
                        $doctor_chamber_day->day_id         = $request['day_id'][$i];
                        $doctor_chamber_day->shift          = $request['shift'][$i];
                        $doctor_chamber_day->start_time     = $request['start_time'][$i];
                        $doctor_chamber_day->end_time       = $request['end_time'][$i];
                        $doctor_chamber_day->save();
                    }
                }
            }

            return redirect()
                ->route('doctor_index')
                ->with('alert.status', 'success')
                ->with('alert.message','Updated Successfullly');

        }

        catch(Exception $e) {
            return redirect()
                ->route('doctor_edit', $id)
                ->with('alert.status', 'danger')
                ->with('alert.message','Not updated'.$e->getMessage());
        }
    }

    public function delete($id){

        $item_use = Patient::where('supervise_doctor_id', $id)->get();
        if(count($item_use) > 0)
        {
            return redirect()
                ->route('doctor_index')
                ->with('alert.status', 'danger')
                ->with('alert.message', 'Sorry, Doctor use in Patient. You can not delete this Doctor.');
        }

        $item_use = Prescription::where('doctor_id', $id)->get();
        if(count($item_use) > 0)
        {
            return redirect()
                ->route('doctor_index')
                ->with('alert.status', 'danger')
                ->with('alert.message', 'Sorry, Doctor use in Prescription. You can not delete this Doctor.');
        }

        $doctor = Doctor::find($id);

        if($doctor->delete()){

            if (isset($doctor->image)) {
                $delete_path             = public_path($doctor->image);
                if(file_exists($delete_path)){
                    $delete  = unlink($delete_path);
                }
            }
            return redirect()
                ->route('doctor_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Deleted successfully!!!');
        }
        return redirect()
            ->route('doctor_index')
            ->with('alert.status', 'danger')
            ->with('alert.message', 'Something went to wrong!!!');


    }
}
