<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\FuncionarioResource;
use App\Models\Funcionario;
use Exception;
use GuzzleHttp\Psr7\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Ramsey\Uuid\Type\Integer;

use function PHPUnit\Framework\isNull;

class FuncionarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return FuncionarioResource::collection(Funcionario::lastest()->paginate());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Funcionario  $funcionario
     * @return \Illuminate\Http\Response
     */
    public function show(Funcionario $funcionario)
    {
        //dd('show');
        return new FuncionarioResource($funcionario);
    }

    public function obtener_funcionario_a_mostrar()
    {

    //     $funcionario = new Funcionario();
    //     $funcionario = Funcionario::where('muestra_funcionario', 1)->first();
    //     //dd($funcionario->id);
    //     if($funcionario != null ){
    //     return response()->json([
    //         'funcionario' => [
    //             'id' => $funcionario -> id,
    //             'id_funcionario' => $funcionario ->id_funcionario,
    //             'nombre_funcionario' => $funcionario->nombre_funcionario,
    //         ],
    //         'success' => 1,
    //         'error' => 0
    //     ]);
    // }


        return response()->json([
            'funcionario' => [],
            'success' => 0,
            'error' => 0,
            'message' => 'No existe datos a mostrar'
        ]);
    }

    public function funcionario_mostrado($id)
    {
        try {
            $funcionario = Funcionario::find($id);

            $funcionario->muestra_funcionario = 2;

            $funcionario->update();

            return response()->json([
                'funcionario' => [
                    'id' => $funcionario -> id,
                    'id_funcionario' => $funcionario ->id_funcionario,
                    'nombre_funcionario' => $funcionario->nombre_funcionario,
                ],
                'success' => 1,
                'error' => 0,
                'message' => 'Actualizado con exito!!'
            ]);
        } catch (Exception $ex) {
            return response()->json([
                'funcionario' => [],
                'success' => 0,
                'error' => 1,
                'message' => "Error al actualizar Bloque " . $ex->getMessage()
            ]);
        }
    }

    public function actualizar_funcionario_a_mostrar(int $id_funcionario)
    {


        try {
            $funcionario = new Funcionario();
            $funcionario = Funcionario::where('id_funcionario', $id_funcionario)->first();
            $funcionario->muestra_funcionario = 1;
            $funcionario->update();
            return response()->json([
                'funcionario' => [
                    'id' => $funcionario -> id,
                    'id_funcionario' => $funcionario ->id_funcionario,
                    'nombre_funcionario' => $funcionario->nombre_funcionario,
                ],
                'success' => 1,
                'error' => 0,
                'message' => 'Actualizado con exito!!'
            ]);

        } catch (\Exception $ex) {
            return response()->json([
                'funcionario' => [],
                'success' => 0,
                'error' => 1,
                'message' => "Error al actualizar Bloque " . $ex->getMessage()
            ]);
        }
    }

    public function funcionarios_sin_mostrar()
    {

        try {
            
            $funcionarios = Funcionario::where('muestra_funcionario', 0)->get();

            return FuncionarioResource::collection($funcionarios );

        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'message' => "Error al actualizar Bloque " . $ex->getMessage()
            ]);
        }
    }

    public function funcionarios_para_sorteo()
    {

        try {
            
            $funcionarios = Funcionario::where('participa_sorteo', 1)
                                        ->where('hora_llegada','<=','19:30:00')->get();

            return FuncionarioResource::collection($funcionarios );

        } catch (\Exception $ex) {
            return response()->json([
                'success' => 0,
                'error' => 1,
                'message' => "Error al actualizar Bloque " . $ex->getMessage()
            ]);
        }
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Funcionario  $funcionario
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Funcionario $funcionario)
    {
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Funcionario  $funcionario
     * @return \Illuminate\Http\Response
     */
    public function destroy(Funcionario $funcionario)
    {
        //
    }
}
