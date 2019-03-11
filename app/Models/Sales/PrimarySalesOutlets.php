<?php

namespace App\Models\Sales;

use Illuminate\Database\Eloquent\Model;

class PrimarySalesOutlets extends Model
{
    protected $table = "primary_sales_outlets";

    public function outlet()
    {
        return $this->belongsTo('App\Models\Contact\Contact','outlet_id');
    }
}
