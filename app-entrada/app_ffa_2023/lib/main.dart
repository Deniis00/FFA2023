import 'package:obs_websocket/obs_websocket.dart';

Future<void> main() async {
  final obsWebSocket = await ObsWebSocket.connect('ws://10.10.40.157:4455', password: 'prueba123');
  print('Conexión exitosa');

  final response = await obsWebSocket.send('GetSceneList');
  
  if (response!['status'] == 'ok') {
    final scenes = response['scenes'] as List<dynamic>;

    print('Listado de escenas:');
    for (final scene in scenes) {
      print(scene['name']);
    }
  } else {
    print('Error al obtener el listado de escenas: ${response['error']}');
  }

  // Cerrar la conexión
  await obsWebSocket.disconnect();
}
