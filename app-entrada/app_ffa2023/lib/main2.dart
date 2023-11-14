import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.landscape
              ? buildLandscapeLayout()
              : buildPortraitLayout();
        },
      ),
    );
  }

  Widget buildPortraitLayout() {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.amber[600],
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ingrese su código de entrada',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 40.0), // Espacio entre el título y el TextField
                TextField(
                  controller: _textEditingController,
                  readOnly: true, // Evita que aparezca el teclado nativo
                  decoration: InputDecoration(
                    hintText: 'Ingrese su código aquí',
                    border: OutlineInputBorder(),
                    
                  ),
                ),
              ],
            ),
          ),
        ),
        // Contenido de la mitad derecha de la pantalla
        NumericKeyboard(
          controller: _textEditingController,
        ),
      ],
    );
  }

  Widget buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ingrese su código de entrada',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20.0), // Espacio entre el título y el TextField
                TextField(
                  controller: _textEditingController,
                  readOnly: true, // Evita que aparezca el teclado nativo
                  decoration: InputDecoration(
                    hintText: 'Ingrese su código aquí',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Contenido de la mitad derecha de la pantalla
        NumericKeyboard(
          controller: _textEditingController,
        ),
      ],
    );
  }
}
class NumericKeyboard extends StatelessWidget {
  final TextEditingController controller;

  NumericKeyboard({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton('1'),
                buildNumberButton('2'),
                buildNumberButton('3'),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton('4'),
                buildNumberButton('5'),
                buildNumberButton('6'),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton('7'),
                buildNumberButton('8'),
                buildNumberButton('9'),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton('0'),
                buildClearButton(controller),
                buildAcceptButton(controller),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNumberButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
        controller.text = controller.text + text;
      },
      style: ElevatedButton.styleFrom(
        
        padding: EdgeInsets.all(20.0), // Ajusta el tamaño del botón
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 100.0),
      ),
    );
  }

  Widget buildClearButton(TextEditingController controller) {
    return ElevatedButton(
      onPressed: () {
        // Handle clear button press
        if (controller.text.isNotEmpty) {
          controller.text = controller.text.substring(0, controller.text.length - 1);
        }
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20.0), // Ajusta el tamaño del botón
      ),
      child: Icon(Icons.clear),
    );
  }

  Widget buildAcceptButton(TextEditingController controller) {
    return ElevatedButton(
      onPressed: () {
        print('Valor ingresado: ${controller.text}');
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(20.0), // Ajusta el tamaño del botón
      ),
      child: Text(
        'Aceptar',
        style: TextStyle(fontSize: 20.0), // Ajusta el tamaño del texto
      ),
    );
  }
}

