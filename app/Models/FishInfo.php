<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FishInfo extends Model
{
    use HasFactory;
    protected $primaryKey = "fish_name";
    protected $keyType = "string";
    public $timestamps = false;
    protected $fillable = ["fish_name", "latin", "other_names", "family", "genus", "type", "lifestyle",
        "food_type", "area", "appereance", "habitat", "food_features", "reproduction", "catches", "baits" ];














}
