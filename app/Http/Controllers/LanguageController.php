<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class LanguageController extends Controller
{
   /* public function index($locale)
    {
        Session::put('locale', $locale);
        return redirect()->back();
    }*/

    public function index($locale)
    {
        $locales = ['bn', 'en'];
        if (in_array($locale, $locales)) {
            Session::set('locale', $locale);
            return redirect()->back();
        }
    }


    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
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
