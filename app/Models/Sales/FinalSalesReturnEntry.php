<?php

namespace App\Models\Sales;

use Illuminate\Database\Eloquent\Model;

class FinalSalesReturnEntry extends Model
{
    protected  $table = "final_sales_return_entries";

    public function finalSales()
    {
        return $this->belongsTo('App\Models\Sales\FinalSales','final_sales_id');
    }

    public function item()
    {
        return $this->belongsTo('App\Models\Inventory\Item','product_id');
    }
}
