import 'package:app_ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final pref = PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('FFA 2023'),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(255, 0, 0, 1),
    );
  }

  Widget _body() {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // Alinea el Column al centro verticalmente
          mainAxisSize: MainAxisSize.min, // Utiliza el espacio mínimo necesario
          children: [
            SizedBox(
              width: 280.0,
              height: 70.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'configuraciones');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 0.0,
                  backgroundColor: Colors.grey,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Alinea el Row al centro horizontalmente
                  children: [
                    Icon(
                      Icons.settings_applications,
                      size: 25,
                    ),
                    SizedBox(width: 8.0),
                    Text("Configuraciones"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 280.0,
              height: 70.0,
              child: ElevatedButton(
                onPressed: () {
                  if (pref.apiUrl == "") {
                    mostrarMensajeConfiguracion(
                        'La URL de la API no está configurada.');
                  } else if (pref.urlWS == "") {
                    mostrarMensajeConfiguracion(
                        'La URL del Websocket no está configurada.');
                  } else {
                    Navigator.pushNamed(context, 'entrada');
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 0.0,
                  backgroundColor: Colors.grey,
                  textStyle: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Alinea el Row al centro horizontalmente
                  children: [
                    Image.asset(
                      'assets/img/boleto.png',
                      width: 25, // Ajusta el ancho según tus necesidades
                      height: 25, // Ajusta la altura según tus necesidades
                    ),
                    const SizedBox(width: 8.0),
                    const Text("Entrada"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void mostrarMensajeConfiguracion(String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Advertencia',
            textAlign: TextAlign.center,
          ),
          content: Text(mensaje),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el AlertDialog
              },
              child: const Text(
                'Aceptar',
                style: TextStyle(color: Colors.green),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(
                  context,
                  'configuraciones',
                );
              },
              child: const Text(
                'Configurar',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        );
      },
    );
  }

}
