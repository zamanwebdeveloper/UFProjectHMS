<?php

namespace App\Models\Sales;

use Illuminate\Database\Eloquent\Model;

class FinalSalesFreeEntry extends Model
{
    protected $table="final_sales_free_entries";

    public function item()
    {
        return $this->belongsTo('App\Models\Inventory\Item','product_id');
    }
}
