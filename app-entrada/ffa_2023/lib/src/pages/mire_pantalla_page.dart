import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:obs_websocket/obs_websocket.dart';


import '../utils/preferencias_usuario.dart';

class MirePantalla extends StatefulWidget {
  const MirePantalla({Key? key}) : super(key: key);

  @override
  State<MirePantalla> createState() => _MirePantallaState();
}

class _MirePantallaState extends State<MirePantalla> {
  late final ObsWebSocket _obsWebSocket;
  final pref = PreferenciasUsuario();
  late var llamandoOBS = false;

  @override
  void initState() {
    super.initState();
    connectWSOBS();
    funcionLlamarOBS();
  }

  @override
  void dispose() {
    _obsWebSocket.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Utiliza un widget Expanded para que la imagen ocupe el 100% de la pantalla
          Expanded(
            child: Image.asset(
              'assets/img/bienvenido.png', // Reemplaza con la ruta correcta de tu imagen
              fit: BoxFit
                  .cover, // Ajusta la imagen para cubrir todo el espacio disponible
            ),
          ),
        ],
      ),
    );
  }

  void mostrarMensaje(String titulo, String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Borde redondeado
          ),
          contentPadding: EdgeInsets.zero,
          title: Container(
            padding: EdgeInsets.zero, // Ajusta el padding según tus necesidades
            color: Colors.grey, // Color de fondo del título
            child: Text(
              titulo,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          content: Text(
            mensaje,
            style: const TextStyle(fontSize: 20.0),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el AlertDialog
              },
              child: const Text(
                'Aceptar',
                style: TextStyle(color: Colors.green, fontSize: 20.0),
              ),
            ),
          ],
        );
      },
    );
  }

  void showAlertDialog(String titulo, String mensaje) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AlertDialog(
              title: Text(titulo),
              content: Text(mensaje),
              actions: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Aceptar')),
              ],
            ),
          );
        });
  }

  Future<void> showAlertDialog2(String title, String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el AlertDialog
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  void funcionLlamarOBS() async {
    print("======> ${DateTime.now()}   antes de llamar ");
    await Future.delayed(const Duration(seconds: 2), () async {
      print("======> ${DateTime.now()}   llama ");
      await llamarOBS();
    });
    print("======> ${DateTime.now()}   despues de llamar ");
  }

  llamarOBS() async {
    String escenaName = pref.codigoAcceso;
    final responseSwitchScene = await _obsWebSocket
        .send('SetCurrentProgramScene', {'sceneName': escenaName});

    if (responseSwitchScene?.requestStatus.result == true) {}

    pref.codigoAcceso = '';

    await Future.delayed(const Duration(seconds: 4), () async {
      // Llama a la función después de 5 segundos
      final responseSwitchSceneLoop = await _obsWebSocket
          .send('SetCurrentProgramScene', {'sceneName': 'loop'});

      if (responseSwitchSceneLoop?.requestStatus.result == true) {
        print('==========> Cambiado a la escena: "loop"');
      } else {
        print(
            ' ===========> Error: No se pudo cambiar a la escena "loop". Detalles: ${responseSwitchSceneLoop?.requestStatus}');
      }

      _obsWebSocket.close();

      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    });
  }

  Future<void> connectWSOBS() async {
    try {
      _obsWebSocket = await ObsWebSocket.connect(
        pref.urlWS,
        password: pref.passWS,
        fallbackEventHandler: (Event event) =>
            print('======> type: ${event.eventType} data: ${event.eventData}'),
      );
    } catch (e) {
      _obsWebSocket.close();

      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    }
  }
}
