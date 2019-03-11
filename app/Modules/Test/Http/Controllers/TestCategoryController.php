<?php

namespace App\Modules\Test\Http\Controllers;

use App\Models\TestCategory;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

class TestCategoryController extends Controller
{
    public function index(){
        $test_cateogry = TestCategory::all();
        return view('test::test_category.index',compact('test_cateogry'));
    }

    public function create(){
        return view('test::test_category.create');
    }

    public function store(Request $request){

        $this->validate($request,[
            'name'=>'required|min:3|max:35',
        ]);

        try {

            $test_category = new TestCategory();

            $test_category->name    = $request->name;
            $test_category->price   = $request->price;
            $test_category->summary = $request->summary;

            if($request->hasFile('image')){
                $image                  = $request->file('image');
                $image_name             = time().$image->getClientOriginalName();
                $fileurl                = $image->move('test-category/', $image_name);
                $test_category->image   = $fileurl;
            }

            $test_category->save();

            if($test_category->save()){
                return redirect()
                    ->route('test_category_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Created Successfullly');
            } else {
                return redirect()
                    ->route('test_category_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','Something went wrong !');
            }

        }

        catch(Exception $e) {

            dd($e->getMessage());

            return redirect()
                ->route('test_category_index')
                ->with('alert.status', 'danger')
                ->with('alert.message','Something went wrong ! '.$e->getMessage());
        }
    }

    public function edit($id){
        $test_category  =   TestCategory::find($id);
        return view('test::test_category.edit',compact('test_category'));
    }

    public function update(Request $request, $id){
        $this->validate($request,[
            'name'          =>  'required|min:3|max:35'
        ]);

        try {

            $test_category = TestCategory::find($id);

            $test_category->name    = $request->name;
            $test_category->price   = $request->price;
            $test_category->summary = $request->summary;

            if($request->hasFile('image')){

                if ($test_category->image) {
                    $delete_path             = public_path($test_category->image);
                    if(file_exists($delete_path)){
                        $delete  = unlink($delete_path);
                    }
                }

                $image       = $request->file('image');
                $image_name  = time().$image->getClientOriginalName();
                $fileurl     = $image->move('test-category/', $image_name);
                $test_category->image = $fileurl;
            }
            $test_category->update();

            if($test_category->update()){
                return redirect()
                    ->route('test_category_index')
                    ->with('alert.status', 'success')
                    ->with('alert.message','Updated Successfullly');
            } else {
                return redirect()
                    ->route('test_category_index')
                    ->with('alert.status', 'danger')
                    ->with('alert.message','NOt Updated');
            }

        }

        catch(Exception $e) {
            echo 'Message: ' .$e->getMessage();
        }
    }

    public function delete($id){

        $test_category = TestCategory::find($id);

        if( $test_category->delete() ){

            if (isset($test_category->image)) {
                $delete_path             = public_path($test_category->image);
                if(file_exists($delete_path)){
                    $delete  = unlink($delete_path);
                }
            }
            return redirect()
                ->route('test_category_index')
                ->with('alert.status', 'success')
                ->with('alert.message', 'Deleted successfully!!!');
        }
        return redirect()
            ->route('test_category_index')
            ->with('alert.status', 'danger')
            ->with('alert.message', 'Something went to wrong!!!');


    }



    public function getTestCategory($id){
        $test_category  = TestCategory::find($id);

        return response()->json([
            'test_category'         =>  $test_category
        ], 201);
    }
}
