<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Resize extends Model
{
    protected $table = 'resizes';

    protected $fillable = [
        'width',
        'height',
        'top',
        'left',
    ];
}
