<?php

namespace App\Models\Api;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Funcionario extends Model
{
    use HasFactory;

    public $timestamps = false;


    protected $fillable = [
     'id',
     'nombre_funcionario',
     'cedula_funcionario',
     'codigo_funcionario',
     'participa_sorteo',
     'table_entrada',
     'registro_entrada'
    ];

    







}
