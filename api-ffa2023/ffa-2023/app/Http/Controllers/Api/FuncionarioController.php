<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\FuncionarioResource;
use App\Models\Api\Funcionario;
use Illuminate\Http\Request;

class FuncionarioController extends Controller
{
   
    public function obtiene_actualiza_funcionario_que_llego($cedula_funcionario){
        try {
           
            $funcionario = Funcionario::where('cedula_funcionario', $cedula_funcionario)
                                        ->where('participa_sorteo', 1)
                                        ->first();
            
            if (!$funcionario) {
                return response()->json([
                    'success' => 1,
                    'error' => 0,
                    'message' => 'Código de acceso inexistente. \n Verifique y vuelva a intentarlo.',
                    'data' => null
                ]);
            }

            if ($funcionario->registro_entrada == 1) {
                return response()->json([
                    'success' => 1,
                    'error' => 0,
                    'message' => 'Código de acceso ya registrado. \n Verifique y vuelva a intentarlo.',
                    'data' => null
                ]);
            }



            /*ACTUALIZA FUNCIONARIO */
            $funcionario->registro_entrada = 1;
            $funcionario->update();

            return response()->json([
                'success' => 1,
                'error' => 0,
                'message' => "Consulta con éxito.",
                'data' => new FuncionarioResource($funcionario)
            ]);

        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'sin_datos'=> 0,
                'message' => "Error al verificar código de acceso " . $ex->getMessage(),
                'data' => null
                
            ]);
        }
    }

    public function funcionarios_aun_sin_registrar()
    {

        try {
            
            $funcionarios = Funcionario::where('registro_entrada', 0)->get();

            $data = FuncionarioResource::collection($funcionarios);

            return response()->json([
                'success' => 1,
                'error' => 0,
                'message' => 'Consulta con éxito.',
                'data' => $data,
            ]);

        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'sin_datos'=> 0,
                'message' => "Error al obtener funcionario sin mostrar" . $ex->getMessage(),
                'data' => null
                
            ]);
        }
    }

    public function funcionarios_para_sorteo()
    {

        try {
           
            $funcionarios = Funcionario::where('participa_sorteo', 1)
                                        ->where('registro_entrada', 1)
                                        ->where('hora_llegada','<=','20:00:00')->get();

            return FuncionarioResource::collection($funcionarios);

        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'sin_datos'=> 0,
                'message' => "Error al obtener funcionarios para sorteo" . $ex->getMessage(),
                'data' => null
                
            ]);
        }
    }

    public function funcionarios_para_sorteo2()
    {

        try {
           
            $funcionarios = Funcionario::where('participa_sorteo2', 1)
                                        ->where('registro_entrada2', 1)->get();

            return FuncionarioResource::collection($funcionarios);

        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'sin_datos'=> 0,
                'message' => "Error al obtener funcionarios para sorteo" . $ex->getMessage(),
                'data' => null
                
            ]);
        }
    }


    public function funcionario_registro_llegada($id)
    {
        try {
            $funcionario = Funcionario::find($id)->first();

            $funcionario->registro_entrada = 1;

            $funcionario->update();

            return response()->json([
                'data' => [
                    'id' => $funcionario -> id,
                    'cedula_funcionario' => $funcionario ->cedula_funcionario,
                    'nombre_funcionario' => $funcionario->nombre_funcionario,
                    'codigo_funcionario' => $funcionario->codigo_funcionario,
                ],
                'success' => 1,
                'error' => 0,
                'message' => 'Actualizado con exito!!'
            ]);
        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'sin_datos'=> 0,
                'message' => "Error al obtener funcionarios para sorteo" . $ex->getMessage(),
                'data' => null
                
            ]);
        }
    }
    
    public function registrar_sorteado($id)
    {
        try {
            $funcionario = Funcionario::where('id',$id)->first();

            $funcionario->sorteado = 1;

            $funcionario->update();
            
            
            return response()->json([
                'data' => [
                    'id' => $funcionario -> id,
                    'cedula_funcionario' => $funcionario ->cedula_funcionario,
                    'nombre_funcionario' => $funcionario->nombre_funcionario,
                    'codigo_funcionario' => $funcionario->codigo_funcionario,
                ],
            ]);
        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'sin_datos'=> 0,
                'message' => "Error al obtener funcionarios para sorteo" . $ex->getMessage(),
                'data' => null
                
            ]);
        }
    }

    public function registrar_sorteado2($id)
    {
        try {
            $funcionario = Funcionario::where('id',$id)->first();

            $funcionario->sorteado2 = 1;

            $funcionario->update();
            
            
            return response()->json([
                'data' => [
                    'id' => $funcionario -> id,
                    'cedula_funcionario' => $funcionario ->cedula_funcionario,
                    'nombre_funcionario' => $funcionario->nombre_funcionario,
                    'codigo_funcionario' => $funcionario->codigo_funcionario,
                ],
            ]);
        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'sin_datos'=> 0,
                'message' => "Error al obtener funcionarios para sorteo" . $ex->getMessage(),
                'data' => null
                
            ]);
        }
    }
}
