<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FishFactor extends Model
{
    use HasFactory;
    public $timestamps = false;
//    protected $primaryKey = "fish_name";
//    protected $keyType = "string";

    protected $fillable = ["fish_name", "opt_values", "type", "weight", "units"];


    public function fish()
    {
        return $this->belongsTo(Fish::class);
    }
}
