import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EntradaPages extends StatefulWidget {
  const EntradaPages({Key? key}) : super(key: key);

  @override
  State<EntradaPages> createState() => _EntradaPagesState();
}

class _EntradaPagesState extends State<EntradaPages> {
  TextEditingController _numeroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada de Números'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Campo de texto para ingresar números
            TextField(
              controller: _numeroController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                labelText: 'Ingresa números',
                border: OutlineInputBorder(),
              ),
              toolbarOptions: ToolbarOptions(
                cut: false,
                copy: false,
                paste: false,
                selectAll: false,
              ),
            ),
            SizedBox(height: 20),
            // Fila con botones de eliminar y aceptar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción que se realiza al hacer clic en "Eliminar"
                    _numeroController.text =
                        _numeroController.text.isNotEmpty
                            ? _numeroController.text
                                .substring(0, _numeroController.text.length - 1)
                            : '';
                  },
                  child: Text('Eliminar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Acción que se realiza al hacer clic en "Aceptar"
                    print('Número ingresado: ${_numeroController.text}');
                  },
                  child: Text('Aceptar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: EntradaPages(),
    ),
  );
}
