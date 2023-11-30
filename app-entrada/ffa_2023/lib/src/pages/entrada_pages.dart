import 'dart:ui';

import 'package:ffa_2023/src/consultas/consulta_api.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class EntradaPages extends StatefulWidget {
  const EntradaPages({Key? key}) : super(key: key);
  
  @override
  State<EntradaPages> createState() => _EntradaPagesState();
}

class _EntradaPagesState extends State<EntradaPages> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  final TextEditingController _textFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _videoPlayerController =
        VideoPlayerController.asset('assets/video/loop.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
      showControls: false,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    _textFieldController.dispose();
    super.dispose();
  }

  void handleNumericButtonPress(String value) {
    _textFieldController.text += value;
  }

  void handleDeleteButtonPress() {
    String currentText = _textFieldController.text;
    if (currentText.isNotEmpty) {
      _textFieldController.text =
          currentText.substring(0, currentText.length - 1);
    }
  }

  Future<void> handleAcceptButtonPress() async {
    String currentText = _textFieldController.text;
    if (currentText.isEmpty) {
      showAlertDialog('Validaciones', "Debe insertar su código de acceso.");
    } else {
      // Utiliza la clase ConsultaApi para verificar el código de acceso
      final consultaApi = ConsultaApi();
      final response = await consultaApi.verificarCodigoAcceso(currentText);

      if (response['success'] == 1) {
        // Código de acceso válido, maneja la respuesta aquí
        print('Respuesta de la API: ${response['message']}');
        print('Datos: ${response['data']}');
      } else {
        // Código de acceso no válido, muestra un mensaje de error
        showAlertDialog('Error', response['message']);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.6,
            child: Chewie(controller: _chewieController),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white, //Color(0xFFC3222B),
                border: Border(
                  top: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        right: BorderSide(color: Colors.black, width: 1.0),
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Alineación vertical al centro
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("FFA 2023",
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 30.0),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                controller: _textFieldController,
                                readOnly: true,
                                inputFormatters: [],
                                showCursor: true,
                                cursorColor: Colors.black, // Color del cursor
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                                decoration: InputDecoration(
                                  labelText: 'Ingrese su código de acceso',
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelStyle:
                                      const TextStyle(color: Colors.black),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      _textFieldController.clear();
                                    },
                                    icon: const Icon(
                                      Icons.clear,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            const Text("BIENVENIDO",
                                style: TextStyle(
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('1'),
                              buildKeyboardButton('2'),
                              buildKeyboardButton('3'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('4'),
                              buildKeyboardButton('5'),
                              buildKeyboardButton('6'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildKeyboardButton('7'),
                              buildKeyboardButton('8'),
                              buildKeyboardButton('9'),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildDeleteButton(),
                              buildKeyboardButton('0'),
                              buildAcceptButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildKeyboardButton(String buttonText) {
    return SizedBox(
      width: 90.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          handleNumericButtonPress(buttonText);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white, // Color del texto del botón
          side: const BorderSide(color: Colors.black87, width: 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Radio de la esquina
          ), // Borde del botón
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }

  Widget buildDeleteButton() {
    return SizedBox(
      width: 90.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          handleDeleteButtonPress();
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red, // Color del texto del botón
          side: const BorderSide(color: Colors.black87, width: 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Radio de la esquina
          ), // Borde del botón
        ),
        child: const Text(
          "x",
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }

  Widget buildAcceptButton() {
    return SizedBox(
      width: 90.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          handleAcceptButtonPress();
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green, // Color del texto del botón
          side: const BorderSide(color: Colors.black87, width: 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Radio de la esquina
          ), // Borde del botón
        ),
        child: const Icon(Icons.check, size: 50.0),
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
}
