<?php

use App\Http\Controllers\Api\FuncionarioController;
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


Route::get('/obtener_funcionario_que_llego/{cedula_funcionario}',[FuncionarioController::class,'obtener_funcionario_que_llego']);
Route::get('/funcionarios_para_sorteo',[FuncionarioController::class,'funcionarios_para_sorteo']);

