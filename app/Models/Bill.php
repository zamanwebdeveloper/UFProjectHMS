<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    protected $table = "bill";

    public function patient(){
        return $this->belongsTo('App\Models\Patient','patient_id');
    }
}
