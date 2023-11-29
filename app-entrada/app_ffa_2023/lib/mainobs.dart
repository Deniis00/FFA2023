import 'dart:convert';

import 'package:web_socket_channel/io.dart';

Future<void> main() async {
  const url = 'ws://10.10.40.157:4455?password=prueba123';
  final channel = IOWebSocketChannel.connect(url);
  print('1');


  var response = await channel.send('GetSceneList');

var scenes = response?.responseData?['scenes'];

scenes.forEach(
    (scene) => print('${scene['sceneName']} - ${scene['sceneIndex']}'));


  // Envía el comando para obtener la lista de escenas
  channel.sink.add('{"request-type": "GetSceneList", "message-id": "get_scene_list"}');
  print('2');
  // Escucha las respuestas del WebSocket
  channel.stream.listen((message) {
    // Analiza el mensaje JSON
    final Map<String, dynamic> data = jsonDecode(message);
  print('3');  
    // Verifica si el mensaje es la respuesta a "GetSceneList"
    if (data['message-id'] == 'get_scene_list') {
      // Accede a la lista de escenas
      final List<dynamic> scenes = data['scenes'];

      // Haz algo con la lista de escenas (por ejemplo, imprímela)
      print('Escenas disponibles: $scenes');
    }
  });

}
