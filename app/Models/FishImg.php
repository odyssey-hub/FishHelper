<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FishImg extends Model
{
    use HasFactory;
    public $table = "fish_imgs";
    public $timestamps = false;

    protected $fillable = ["id", "fish_name", "img"];

    public function fish(){
        return $this->belongsTo(Fish::class, 'fish_name', 'name');
    }



}
