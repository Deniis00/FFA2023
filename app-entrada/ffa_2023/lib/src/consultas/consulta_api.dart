import 'dart:convert';

import 'package:ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:http/http.dart' as http;

class ConsultaApi {
  Future<Map<String, dynamic>> verificarCodigoAcceso(String codigo) async {
    final prefe = PreferenciasUsuario();
    final String baseUrl = prefe.apiUrl;

    final url =
        Uri.parse('$baseUrl/obtiene_actualiza_funcionario_que_llego/$codigo');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, parsea la respuesta JSON
        final Map<String, dynamic> data = json.decode(response.body);

        String mensajeConNuevaLinea = data['message'].replaceAll('\\n', '\n');

        // Actualizar el mensaje en el mapa JSON
        data['message'] = mensajeConNuevaLinea;

        return data;
      } else {
        // La solicitud falló con un código de estado diferente a 200
        return {
          'success': 0,
          'error': 1,
          'message':
              'Error en la solicitud a la API. Código de estado: ${response.statusCode}',
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

  Future<Map<String, dynamic>> obtenerListadoFuncionarios() async {
    final prefe = PreferenciasUsuario();
    final String baseUrl = prefe.apiUrl;

    final url = Uri.parse('$baseUrl/obtener_funcionarios_sin_registrar');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, parsea la respuesta JSON
        final Map<String, dynamic> data = json.decode(response.body);

        String mensajeConNuevaLinea = data['message'].replaceAll('\\n', '\n');

        // Actualizar el mensaje en el mapa JSON
        data['message'] = mensajeConNuevaLinea;

        return data;
      } else {
        // La solicitud falló con un código de estado diferente a 200
        return {
          'success': 0,
          'error': 1,
          'message':
              'Error en la solicitud a la API. Código de estado: ${response.statusCode}',
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

  actualizarEstadoFuncionario(int funcionarioId) async {
     final prefe = PreferenciasUsuario();
    final String baseUrl = prefe.apiUrl;

    final url = Uri.parse('$baseUrl/registrar_funcionario/$funcionarioId');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, parsea la respuesta JSON
        final Map<String, dynamic> data = json.decode(response.body);

        String mensajeConNuevaLinea = data['message'].replaceAll('\\n', '\n');

        // Actualizar el mensaje en el mapa JSON
        data['message'] = mensajeConNuevaLinea;

        return data;
      } else {
        // La solicitud falló con un código de estado diferente a 200
        return {
          'success': 0,
          'error': 1,
          'message':
              'Error en la solicitud a la API. Código de estado: ${response.statusCode}',
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
}
