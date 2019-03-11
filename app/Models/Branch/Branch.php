<?php

namespace App\Models\Branch;

use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    protected $table = 'branch';

    protected $fillable = [
    	'branch_name',
    	'branch_description'
    ];

    public function createdBy()
    {
        return $this->belongsTo('App\Admin', 'created_by');
    }

    public function updatedBy()
    {
        return $this->belongsTo('App\Admin', 'updated_by');
    }
}
