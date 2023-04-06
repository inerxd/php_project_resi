<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Survey extends Model
{
    use HasFactory;

    public $guarded = [];

   

public function path()
{

    return url('/admin/' .$this->id);
}

public  function publicpath()
{
    return url('/surveys/' .$this->id.'-'. Str::slug($this->title));
}


public function user()
{
        return $this->belongsTo(User::class);

}

public function questions(){
    return $this->hasmany(Question::class);

}
public function encuestas(){
    return $this->hasmany(Encuesta::class);

}


}
