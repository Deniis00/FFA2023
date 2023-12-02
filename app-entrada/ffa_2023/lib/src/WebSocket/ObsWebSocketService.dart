import 'package:obs_websocket/obs_websocket.dart';

class ObsWebSocketService {
  late ObsWebSocket _obsWebSocket;

  ObsWebSocket get instance {
    if (_obsWebSocket == null) {
      // Manejar la situación de nulidad
      throw Exception('ObsWebSocket no inicializado');
    }
    return _obsWebSocket;
  }

  Future<void> connect() async {
    try {
      _obsWebSocket = await ObsWebSocket.connect('ws://10.10.40.157:4455',
          password: 'prueba123');

      final status = await _obsWebSocket.stream.status;

      if (!status.outputActive) {
        await _obsWebSocket.stream.start();
      }

      print('=======================> Conexión exitosa a OBS WebSocket');
      // Aquí puedes agregar la lógica adicional, como obtener la lista de escenas, etc.
    } catch (e) {
      throw Exception(
          '=====================> Error de conexión a OBS WebSocket: $e');
      // Manejar el error según tus necesidades
    }
  }

  Future<void> changeToScene(String sceneName) async {
    final responseSwitchScene = await _obsWebSocket.send('SetCurrentProgramScene', {'sceneName': sceneName});

    if (responseSwitchScene?.requestStatus.result == true) {
      print('Cambiado a la escena: $sceneName');
    } else {
      print(
          'Error: No se pudo cambiar a la escena $sceneName. Detalles: ${responseSwitchScene?.requestStatus}');
    }
  }

  void closeConnection() {
    _obsWebSocket.close();
  }
}

/*// Uso en otras clases
final obsWebSocketService = ObsWebSocketService();

// Para conectarse
await obsWebSocketService.connect();

// Para obtener la instancia de ObsWebSocket
final obsWebSocket = obsWebSocketService.instance;

// Para cerrar la conexión
obsWebSocketService.closeConnection();
*/