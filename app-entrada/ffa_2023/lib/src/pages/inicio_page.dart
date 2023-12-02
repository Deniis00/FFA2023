
import 'package:ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final pref = PreferenciasUsuario();
  String statusObsWS = 'Desconectado';
 

  @override
  void initState() {
    super.initState();
  }

  @override
  Future<void> dispose() async {
    super.dispose();
  }

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
      backgroundColor: const Color(0xFFC3222B),
    );
  }



  Widget _body() {
    return Stack(
      children: [
        Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/img/boleto.png',
                          width: 25,
                          height: 25,
                        ),
                        const SizedBox(width: 8.0),
                        const Text("Entrada"),
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
                      } else {
                        Navigator.pushNamed(context, 'list_funcionarios');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      elevation: 0.0,
                      backgroundColor: Colors.grey,
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/img/list.png',
                          width: 25,
                          height: 25,
                        ),
                        const SizedBox(width: 8.0),
                        const Text("Lista Funcionarios"),
                      ],
                    ),
                  ),
                )
              
              ],
            ),
          ),
        ),
      ],
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
