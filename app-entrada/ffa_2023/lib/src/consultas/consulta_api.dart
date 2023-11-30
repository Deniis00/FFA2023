import 'dart:convert';

import 'package:http/http.dart' as http;

class ConsultaApi {
  final String baseUrl = "http://localhost:8000/api";

  Future<Map<String, dynamic>> verificarCodigoAcceso(String codigo) async {
    final url = Uri.parse('$baseUrl/obtiene_actualiza_funcionario_que_llego/$codigo');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, parsea la respuesta JSON
        final Map<String, dynamic> data = json.decode(response.body);
        return data;
      } else {
        // La solicitud falló con un código de estado diferente a 200
        return {
          'success': 0,
          'error': 1,
          'message': 'Error en la solicitud a la API. Código de estado: ${response.statusCode}',
          'data': null,
        };
      }
    } catch (e) {
      // Maneja cualquier error que pueda ocurrir durante la solicitud
      return {
        'success': 0,
        'error': 1,
        'message': 'Error en la solicitud a la API: $e',
        'data': null,
      };
    }
  }

  Future<Map<String, dynamic>> verificarCodigoAcceso2(String codigoAcceso) async {
    
    final url = Uri.parse('http://127.0.0.1:8000/api/obtiene_actualiza_funcionario_que_llego/$codigoAcceso');

    
    final resp = await http.get(
      url
    );

    Map<String, dynamic> decodeResp = json.decode(resp.body);

   return decodeResp;
  }

}
