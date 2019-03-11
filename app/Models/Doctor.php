<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Doctor extends Model
{
    protected $table = 'doctors';

    public function department(){
        return $this->belongsTo('App\Models\Department' , 'department_id');
    }
}
