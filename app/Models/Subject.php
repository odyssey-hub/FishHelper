<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;
//    protected $primaryKey = "name";
//    protected $keyType = "string";


    public $table = "subjects";
    public $timestamps = false;
}
