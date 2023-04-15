<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderLine extends Model
{
    use HasFactory;
    protected $guarded = [];
    
    function product()
    {
        return $this->belongsTo(ProductListModel::class, 'productlist_id');
    }    

    function order()
    {
        return $this->belongsTo(Order::class);
    }
}
