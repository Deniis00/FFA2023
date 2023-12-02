<?php

use App\Http\Controllers\Api\FuncionarioController;
use App\Http\Controllers\Api\ObsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::get('/obtiene_actualiza_funcionario_que_llego/{cedula_funcionario}',[FuncionarioController::class,'obtiene_actualiza_funcionario_que_llego']);
Route::get('/funcionarios_para_sorteo',[FuncionarioController::class,'funcionarios_para_sorteo']);

Route::get('/obtener_funcionarios_sin_registrar',[FuncionarioController::class,'funcionarios_aun_sin_registrar']);
Route::get('/registrar_funcionario/{id}',[FuncionarioController::class,'funcionario_registro_llegada']);


