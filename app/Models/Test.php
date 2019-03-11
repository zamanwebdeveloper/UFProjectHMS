<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    protected  $table = "tests";

    public function testCategory(){
       return $this->belongsTo('App\Models\TestCategory', 'test_category_id');
    }

    public function patient(){
       return $this->belongsTo('App\Models\Patient', 'patient_id');
    }
    public function doctor(){
       return $this->belongsTo('App\Models\Doctor', 'doctor_id');
    }

}
