<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Journey extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function truck(){
    	return $this->belongsTo(Truck::class,'truck_id','id');
    }

    public function driver(){
    	return $this->belongsTo(Driver::class,'driver_id','id');
    }
}
