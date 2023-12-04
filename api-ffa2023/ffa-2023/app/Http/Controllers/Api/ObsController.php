<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use ObsWebsocket\ObsWebSocket; // Ajusta el namespace aquí

class ObsController extends Controller
{
    public function controlarObs(Request $request)
    {   
        $obs = new ObsWebSocket(); // Ajusta el namespace aquí

        try {
            $result = $obs->connect('ws://10.10.40.157:4455', 'prueba123');
            return response()->json(['success' => true, 'message' => 'Connected to OBS']);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => $e->getMessage()]);
        }
    }
}
