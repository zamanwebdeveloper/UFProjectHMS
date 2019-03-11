<?php

namespace App\Modules\Department\Http\Controllers;

use App\Models\Department;
use App\Models\Doctor;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use PhpParser\Comment\Doc;

class DepartmentController extends Controller
{
    public function index(){
        $departments  =   Department::all();
        return view('department::index',compact('departments'));
    }

    public function create(){
        return view('department::create');
    }

    public function store(Request $request){

        $this->validate($request,[
            'name'     => 'required|min:5|max:35',
        ]);

        try {

            $department              = new Department();
            $department->name        = $request->name;
            $department->status      = 1;
            $department->summary     = $request->summary;
            $department->save();


            if($department->save()){

                return redirect()
                    ->route('department_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Created Successfullly');

            } else {

                return redirect()
                    ->route('department_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','not created ! Something went wrong');

            }

        }

        catch(Exception $e) {

            echo 'Message: ' .$e->getMessage();

        }
    }

    public function edit($id){
        $department  =   Department::find($id);
        return view('department::edit',compact('department'));
    }

    public function update(Request $request, $id){

        $this->validate($request,[
            'name'=>'required|min:5|max:35',
        ]);

        try {

            $department               = Department::find($id);
            $department->name         = $request->name;
            $department->status       = $request->status;
            $department->summary      = $request->summary;

            $department->update();

            if($department->update()){
                return redirect()
                    ->route('department_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Updated Successfullly');
            } else {
                return redirect()
                    ->route('department_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','Not Updated');
            }
        }

        catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }
    }

    public function delete($id){

        $department = Doctor::where('department_id', $id)->get();

        if($department->count() > 0)
        {
            return redirect()
                ->route('department_index')
                ->with('alert.status', 'danger')
                ->with('alert.message', 'Sorry, This Departmnet use in Doctor. You can not delete this Departmnet.');
        }

        $department = Department::find($id);

        if($department->delete()){
            return redirect()
                ->route('department_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Deleted successfully!!!');
        }
        return redirect()
            ->route('department_index')
            ->with('alert.status', 'danger')
            ->with('alert.message', 'not deleted, Something went to wrong!!!');

    }
}
