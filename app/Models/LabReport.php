<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class LabReport extends Model
{
    protected $table = "lab_reports";

    public function doctor()
    {
        return $this->belongsTo('App\Models\Doctor', 'reference_doctor_id');
    }

    public function test_category()
    {
        return $this->belongsTo('App\Models\TestCategory', 'test_category_id');
    }
}
