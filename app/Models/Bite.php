<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bite extends Model
{
    public $table = "bites";
    public $timestamps = false;
    protected $fillable = ["name", "description", "img", "type", "user_id"];
    use HasFactory;
}
