import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
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
              width: 200.0,
              height: 50.0,
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
                  backgroundColor: Colors.lightBlue,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Alinea el Row al centro horizontalmente
                  children: [
                    Icon(Icons.settings_applications),
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
              width: 200.0,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  print('onPress entrada');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  elevation: 0.0,
                  backgroundColor: Colors.lightBlue,
                  textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Alinea el Row al centro horizontalmente
                  children: [
                    Image.asset(
                      'assets/img/boleto.png',
                      width: 40, // Ajusta el ancho según tus necesidades
                      height: 40, // Ajusta la altura según tus necesidades
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
}
