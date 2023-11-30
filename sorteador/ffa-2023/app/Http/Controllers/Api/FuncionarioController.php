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

    public function funcionarios_para_sorteo()
    {

        try {
           
            $funcionarios = Funcionario::where('participa_sorteo', 1)
                                        ->where('hora_llegada','<=','22:30:00')->get();

            return FuncionarioResource::collection($funcionarios);

        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'message' => "Error al actualizar Bloque " . $ex->getMessage()
            ]);
        }
    }


}
