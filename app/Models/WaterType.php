<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WaterType extends Model
{
    use HasFactory;

//    protected $primaryKey = 'name';
//    protected $keyType = 'string';

    public $table = "water_types";
    public $timestamps = false;
}
