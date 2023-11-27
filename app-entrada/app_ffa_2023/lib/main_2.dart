import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(
    MaterialApp(
      home: EntradaPages(),
    ),
  );
}

class EntradaPages extends StatefulWidget {
  const EntradaPages({Key? key}) : super(key: key);

  @override
  State<EntradaPages> createState() => _EntradaPagesState();
}

class _EntradaPagesState extends State<EntradaPages> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late TextEditingController _numeroController;

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

    _numeroController = TextEditingController();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    _numeroController.dispose();
    super.dispose();
  }

  void _agregarNumero(int numero) {
    setState(() {
      _numeroController.text = '$_numeroController$numero';
    });
  }

  void _eliminarUltimoNumero() {
    setState(() {
      if (_numeroController.text.isNotEmpty) {
        _numeroController.text =
            _numeroController.text.substring(0, _numeroController.text.length - 1);
      }
    });
  }

  void _aceptarNumero() {
    // Puedes implementar aquí la lógica para manejar el número ingresado
    int? numeroIngresado = int.tryParse(_numeroController.text);
    if (numeroIngresado != null) {
      print('Número ingresado: $numeroIngresado');
      // Puedes realizar acciones adicionales aquí según tus necesidades
    } else {
      print('Entrada no válida');
      // Puedes mostrar un mensaje de error o realizar otras acciones si la entrada no es válida
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Chewie(controller: _chewieController),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _numeroController,
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: const InputDecoration(
                        labelText: 'Ingresa números',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomKeyboardButton(1, () => _agregarNumero(1)),
                      CustomKeyboardButton(2, () => _agregarNumero(2)),
                      CustomKeyboardButton(3, () => _agregarNumero(3)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomKeyboardButton(4, () => _agregarNumero(4)),
                      CustomKeyboardButton(5, () => _agregarNumero(5)),
                      CustomKeyboardButton(6, () => _agregarNumero(6)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomKeyboardButton(7, () => _agregarNumero(7)),
                      CustomKeyboardButton(8, () => _agregarNumero(8)),
                      CustomKeyboardButton(9, () => _agregarNumero(9)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomKeyboardButton(0, () => _agregarNumero(0)),
                      CustomKeyboardButton(-1, _eliminarUltimoNumero),
                      CustomKeyboardButton(-2, _aceptarNumero),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomKeyboardButton extends StatelessWidget {
  final int numero;
  final VoidCallback onPressed;

  CustomKeyboardButton(this.numero, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: numero >= 0 ? Text('$numero') : (numero == -1 ? Icon(Icons.backspace) : Text('Aceptar')),
    );
  }
}
