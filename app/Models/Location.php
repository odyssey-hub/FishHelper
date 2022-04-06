<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;

    public function imgs()
    {
        return $this->hasMany(LocationImg::class);
    }


    public function fishes()
    {
        return $this->belongsToMany(Fish::class, "locations_fishes", "location_id",
            "fish_name", "id", "name");
    }
}
