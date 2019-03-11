<?php

namespace App\Modules\Stuff\Http\Controllers;

use App\Models\StuffType;
use Illuminate\Http\Request;
use App\Models\Stuff;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class StuffController extends Controller
{
    public function index(){
        $stuffs  =   Stuff::orderBy('id','DESC')->get();
        return view('stuff::stuff.index',compact('stuffs'));
    }

    public function create(){
        $stuff_types = StuffType::all();
        return view('stuff::stuff.create',compact('stuff_types'));
    }

    public function store(Request $request){

        $this->validate($request,[
            'stuff_type_id'=>'required',
            'name'=>'required|min:5|max:35',
            'mobile'=>'required|numeric',
            'gender'=>'required',
            'degree'=>'required',
            'nid'=>'required|numeric|unique:stuffs',
            'joining_date'=>'required',
        ]);

        try {

            $stuff = new Stuff();

            $stuff->stuff_type_id= $request->stuff_type_id;
            $stuff->name         = $request->name;
            $stuff->mobile       = $request->mobile;
            $stuff->age          = $request->age;
            $stuff->gender       = $request->gender;
            $stuff->nid          = $request->nid;
            $stuff->degree       = $request->degree;
            $stuff->joining_date = date('Y-m-d', strtotime($request->joining_date));

            if($request->hasFile('image')){
                $image       = $request->file('image');
                $image_name  = time().$image->getClientOriginalName();
                $fileurl     = $image->move('stuff/', $image_name);
                $stuff->image = $fileurl;
            }


            if($stuff->save()){
                return redirect()
                    ->route('stuff_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Created Successfullly');
            } else {
                return redirect()
                    ->route('stuff_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','not created ! Something went wrong');
            }




        }

        catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }
    }

    public function edit($id){
        $stuff  =   Stuff::find($id);
        $stuff_types = StuffType::all();
        return view('stuff::stuff.edit',compact('stuff','stuff_types'));
    }

    public function update(Request $request, $id){
        $this->validate($request,[
            'stuff_type_id'=>'required',
            'name'=>'required|min:5|max:35',
            'mobile'=>'required|numeric',
            'gender'=>'required',
            'degree'=>'required',
            'nid'=>'required|numeric|unique:stuffs',
            'joining_date'=>'required',
        ]);

        try {

            $stuff = Stuff::find($id);

            $stuff->stuff_type_id= $request->stuff_type_id;
            $stuff->name         = $request->name;
            $stuff->mobile       = $request->mobile;
            $stuff->age          = $request->age;
            $stuff->gender       = $request->gender;
            $stuff->nid          = $request->nid;
            $stuff->degree       = $request->degree;
            $stuff->joining_date = date('Y-m-d', strtotime($request->joining_date));

            if($request->hasFile('image')){

                if ($stuff->image) {
                    $delete_path             = public_path($stuff->image);
                    if(file_exists($delete_path)){
                        $delete  = unlink($delete_path);
                    }
                }

                $image       = $request->file('image');
                $image_name  = time().$image->getClientOriginalName();
                $fileurl     = $image->move('stuff/', $image_name);
                $stuff->image = $fileurl;
            }


            if($stuff->save()){
                return redirect()
                    ->route('stuff_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Updated Successfullly');
            } else {
                return redirect()
                    ->route('stuff_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','Not Updated');
            }


        }

        catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }
    }

    public function delete($id){
        $stuff = Stuff::find($id);

        if($stuff->delete()){

            if (isset($stuff->image)) {
                $delete_path             = public_path($stuff->image);
                if(file_exists($delete_path)){
                    $delete  = unlink($delete_path);
                }
            }
            return redirect()
                ->route('stuff_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Deleted successfully!!!');
        }
        return redirect()
            ->route('stuff_index')
            ->with('alert.status', 'danger')
            ->with('alert.message', 'Something went to wrong!!!');




    }
}
