<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Funcionario extends Model
{
    use HasFactory;

    public $timestamps = false;


   protected $fillable = [
    'id',
    'id_funcionario',
    'nombre_funcionario',
    'muestra_funcionario'
   ];

}
