import 'dart:async';

import 'package:obs_websocket/obs_websocket.dart';

Future<void> main() async {
  final obsWebSocket = await ObsWebSocket.connect('ws://10.10.40.157:4455',
      password: 'prueba123');
  print('Conexión exitosa');

  // Obtener el listado de escenas
  final responseGetSceneList = await obsWebSocket.send('GetSceneList');

  if (responseGetSceneList?.requestStatus?.result == true) {
    final responseData = responseGetSceneList?.responseData;

    if (responseData != null) {
      final scenes = responseData['scenes'] as List<dynamic>;

      // Imprimir el listado de escenas
      print('Listado de escenas:');
      for (final scene in scenes) {
        final sceneName = scene['sceneName'];
        print(sceneName);
      }

      // Cambiar a una escena específica (por ejemplo, la primera escena en la lista)
      if (scenes.isNotEmpty) {
        final firstSceneName = scenes.first['sceneName'];
        await changeToScene(obsWebSocket, firstSceneName);
      }
    } else {
      print('Error: No se encontraron datos de escenas en la respuesta.');
    }
  } else {
    print(
        'Error: La operación para obtener el listado de escenas no fue exitosa. Detalles: ${responseGetSceneList?.requestStatus}');
  }

  // Cerrar la conexión
  await obsWebSocket.close();
}

// Función para cambiar a una escena específica
Future<void> changeToScene(ObsWebSocket obsWebSocket, String sceneName) async {
  final responseSwitchScene = await obsWebSocket
      .send('SetCurrentProgramScene', {'sceneName': sceneName});

  if (responseSwitchScene?.requestStatus.result == true) {
    print('Cambiado a la escena: $sceneName');
  } else {
    print(
        'Error: No se pudo cambiar a la escena $sceneName. Detalles: ${responseSwitchScene?.requestStatus}');
  }
  print("======================> ANTES del timer");

  await Future.delayed(const Duration(seconds: 4), () async {
    print("======================> dentro del timer");
    // Llama a la función después de 5 segundos
    final responseSwitchSceneLoop = await obsWebSocket
        .send('SetCurrentProgramScene', {'sceneName': 'loop'});

    if (responseSwitchSceneLoop?.requestStatus.result == true) {
      print('==========> Cambiado a la escena: "loop"');
    } else {
      print(
          ' ===========> Error: No se pudo cambiar a la escena "loop". Detalles: ${responseSwitchSceneLoop?.requestStatus}');
    }
  });
  print("======================> DESPUES del timer");
}
