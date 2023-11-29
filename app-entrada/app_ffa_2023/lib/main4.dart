import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';

void main() {
  runApp(MyApp());
}

class WebSocketScreen extends StatefulWidget {
  @override
  _WebSocketScreenState createState() => _WebSocketScreenState();
}

class _WebSocketScreenState extends State<WebSocketScreen> {
  final channel = IOWebSocketChannel.connect('ws://10.10.40.157:4455?password=prueba123');
  final sceneNameController = TextEditingController();
  List<String> scenes = [];

  @override
  void dispose() {
    channel.sink.close(); // Close the channel when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control de OBS Studio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Send the command to get the list of scenes
                channel.sink.add('{"request-type": "GetSceneList", "message-id": "get_scene_list"}');
              },
              child: Text('Obtener Lista de Escenas'),
            ),
            SizedBox(height: 20),
            DropdownButton(
              value: sceneNameController.text,
              items: scenes.map((scene) {
                return DropdownMenuItem(
                  value: scene,
                  child: Text(scene),
                );
              }).toList(),
              onChanged: (value) {
                sceneNameController.text = value as String;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get the name of the scene from the TextField
                final sceneName = sceneNameController.text.trim();

                // Build and send the command to switch to the desired scene
                final command = '{"request-type": "SetCurrentScene", "message-id": "set_current_scene", "scene-name": "$sceneName"}';
                channel.sink.add(command);
              },
              child: Text('Cambiar a la escena'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebSocketScreen(),
    );
  }
}
