<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    public function Category(){
        return $this->belongsTo(Category::class);
    }
    public function Domain(){
        return $this->hasMany(Domain::class);
    }
    
}
