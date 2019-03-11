<?php

namespace App\Modules\Stuff\Http\Controllers;

use App\Models\Stuff;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\StuffType;

class StuffTypeController extends Controller
{
    public function index(){
        $types  =   StuffType::all();
        return view('stuff::stuff_type.index',compact('types'));
    }

    public function create(){
        return view('stuff::stuff_type.create');
    }

    public function store(Request $request){

        $this->validate($request,[
            'name'      => 'required|min:5|max:35',
            'salary'   => 'required',
        ]);

        try {

            $stuff_type              = new StuffType();

            $stuff_type->name        = $request->name;
            $stuff_type->salary      = $request->salary;
            $stuff_type->summary     = $request->summary;


            if($stuff_type->save()){
                return redirect()
                    ->route('stuff_type_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Created Successfullly');
            } else {
                return redirect()
                    ->route('stuff_type_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','not created ! Something went wrong');
            }

        }

        catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }
    }

    public function edit($id){
        $stuff_type  =   StuffType::find($id);
        return view('stuff::stuff_type.edit',compact('stuff_type'));
    }

    public function update(Request $request, $id){

        $this->validate($request,[
            'name'=>'required|min:5|max:35',
            'salary'=>'required',
        ]);

        try {

            $stuff_type               = StuffType::find($id);
            $stuff_type->name         = $request->name;
            $stuff_type->salary       = $request->salary;
            $stuff_type->summary      = $request->summary;

            $stuff_type->update();

            if($stuff_type->update()){
                return redirect()
                    ->route('stuff_type_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Updated Successfullly');
            } else {
                return redirect()
                    ->route('stuff_type_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','Not Updated');
            }
        }

        catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }
    }

    public function delete($id){

        $type = Stuff::where('stuff_type_id', $id)->get();

        if(count($type) > 0)
        {
            return redirect()
                ->route('stuff_type_index')
                ->with('alert.status', 'danger')
                ->with('alert.message', 'Sorry, This Type use in Stuff. You can not delete this Type.');
        }

        $stuff_type = StuffType::find($id);

        if($stuff_type->delete()){
            return redirect()
                ->route('stuff_type_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Deleted successfully!!!');
        }
        return redirect()
            ->route('stuff_type_index')
            ->with('alert.status', 'danger')
            ->with('alert.message', 'not deleted, Something went to wrong!!!');

    }
}
