<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fish extends Model
{
    use HasFactory;


    protected $primaryKey = 'name';
    protected $keyType = 'string';


    public function info()
    {
        return $this->hasOne(FishInfo::class, "fish_name", "name");
    }

    public function images()
    {
        return $this->hasMany(FishImg::class, "fish_name", "name");
    }

    public function factors()
    {
        return $this->hasMany(FishFactor::class, "fish_name", "name");
    }

    public function locations()
    {
        return $this->belongsToMany(Location::class, "locations_fishes", "fish_name",
        "location_id", "name", "id");
    }
}
