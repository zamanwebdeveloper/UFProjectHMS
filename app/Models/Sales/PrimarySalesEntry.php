<?php

namespace App\Models\Sales;

use Illuminate\Database\Eloquent\Model;

class PrimarySalesEntry extends Model
{
    protected  $table = "primary_sales_entries";

    public function company()
    {
        return $this->belongsTo('App\Models\Contact\Contact','company_id');
    }
    public function employee()
    {
        return $this->belongsTo('App\Models\Contact\Contact','employee_id');
    }
    public function item()
    {
        return $this->belongsTo('App\Models\Inventory\Item','product_id');
    }

}
