import 'dart:ui';

import 'package:ffa_2023/src/consultas/consulta_api.dart';
import 'package:ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:video_player/video_player.dart';

class EntradaPages extends StatefulWidget {
  const EntradaPages({Key? key}) : super(key: key);

  @override
  State<EntradaPages> createState() => _EntradaPagesState();
}

class _EntradaPagesState extends State<EntradaPages> with RouteAware {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  final TextEditingController _textFieldController = TextEditingController();
  final _codigoAccesoFocusNode = FocusNode();
  final pref = PreferenciasUsuario();

  @override
  void didPopNext() {
    // La ruta 'mire_pantalla' se quitó de la pila, puedes reanudar la reproducción aquí
    _videoPlayerController.seekTo(const Duration(seconds: 0));
    _videoPlayerController.play();
  }

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

  Future<void> realizaConsulta(
      String codigoAcceso, BuildContext context) async {
    // Utiliza la clase ConsultaApi para verificar el código de acceso
    final consultaApi = ConsultaApi();
    final response = await consultaApi.verificarCodigoAcceso(codigoAcceso);

    if (response['success'] == 1) {
      if (response['data'] == null) {
        EasyLoading.dismiss();
        await showAlertDialog2('Atención!!', response['message']);
      } else {
        EasyLoading.dismiss();
        Map<String, dynamic> data = response["data"];

        String codigoAcceso = data["cedula_funcionario"];
        pref.codigoAcceso = codigoAcceso;
       

        // ignore: use_build_context_synchronously
        await Navigator.pushNamed(context, 'mire_pantalla');
        _videoPlayerController.play();
      }
    } else {
      EasyLoading.dismiss();
      await showAlertDialog2('Atención!!', response['message']);
    }
  }

  Future<void> handleAcceptButtonPress(BuildContext context) async {
    String codigoAcceso = _textFieldController.text;
    if (codigoAcceso.isEmpty) {
      showAlertDialog('Validaciones', "Debe insertar su código de acceso.");
    } else {
      EasyLoading.show(status: "Cargando..");
      await realizaConsulta(codigoAcceso, context);

      _textFieldController.clear();
      _codigoAccesoFocusNode.requestFocus();
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
                            const SizedBox(height: 20.0),
                            const Text(
                              'Inserte su código de acceso',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8.0, left: 8.0, right: 8.0),
                              child: TextFormField(
                                focusNode: _codigoAccesoFocusNode,
                                controller: _textFieldController,
                                readOnly: true,
                                inputFormatters: [],
                                showCursor: true,
                                cursorColor: Colors.black, // Color del cursor
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                                decoration: InputDecoration(
                                  labelText:
                                      null, //'Ingrese su código de acceso',
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelStyle:
                                      const TextStyle(color: Colors.black),
                                  //contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .grey), // Color de la línea inferior cuando no está enfocado
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .grey), // Color de la línea inferior cuando está enfocado
                                  ),
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
                            const SizedBox(height: 60.0),
                            Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img/logo.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              height: 100,
                            )
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
                              buildAcceptButton(context),
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

  Widget buildAcceptButton(BuildContext context) {
    return SizedBox(
      width: 90.0,
      height: 70.0,
      child: ElevatedButton(
        onPressed: () {
          handleAcceptButtonPress(context);
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
}
