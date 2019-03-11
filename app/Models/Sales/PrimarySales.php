<?php

namespace App\Models\Sales;

use Illuminate\Database\Eloquent\Model;

class PrimarySales extends Model
{
    protected $table = "primary_sales";

    public function company()
    {
        return $this->belongsTo('App\Models\Contact\Contact','company_id');
    }
    public function employee()
    {
        return $this->belongsTo('App\Models\Contact\Contact','employee_id');
    }

    public function road()
    {
        return $this->belongsTo('App\Models\Contact\Road','road_id');
    }

}
