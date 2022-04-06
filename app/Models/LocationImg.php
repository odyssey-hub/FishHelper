<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LocationImg extends Model
{
    use HasFactory;
    public $table = "location_imgs";
    public $timestamps = false;

    protected $fillable = ["id", "img", "location_id"];

    public function location(){
        return $this->belongsTo(Location::class, 'location_id');
    }

}
