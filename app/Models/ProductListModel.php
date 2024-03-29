<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductListModel extends Model
{
    use HasFactory;

    public $table='productlist';
    public $primaryKey='id';
    public $incrementing=true;
    public $keyType='int';
    public $timestamps=false;
}
