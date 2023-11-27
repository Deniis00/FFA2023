import 'package:app_ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';

class ConfiguracionesPage extends StatefulWidget {
  const ConfiguracionesPage({super.key});

  @override
  State<ConfiguracionesPage> createState() => _ConfiguracionesPageState();
}

class _ConfiguracionesPageState extends State<ConfiguracionesPage> {
  final pref = PreferenciasUsuario();
  final _urlApi = TextEditingController();
  final _urlWS = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (pref.apiUrl == "") {
      _urlApi.text = "http://";
    } else {
      _urlApi.text = pref.apiUrl;
    }

    _urlWS.text = pref.urlWS;

    return WillPopScope(
        child: Scaffold(
          appBar: _appBar(context),
          body: _body(),
        ),
        onWillPop: () async {
          Navigator.pop(context);
          return true;
        });
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: const Text('FFA 2023',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(255, 0, 0, 1),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _body() {
    return Center(
      child: Container(
        color: Colors.grey[100],
        child: SizedBox(
          width: 400.0,
          height: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              const Text("Ingrese el URL de la Api:",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              TextField(
                  autofocus: true,
                  controller: _urlApi,
                  onSubmitted: (value) => {pref.apiUrl = value}),
              const SizedBox(
                height: 100.0,
              ),
              const Text("Ingrese el URL del WS:",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              TextField(
                  autofocus: true,
                  controller: _urlWS,
                  onSubmitted: (value) => {pref.urlWS = value})
            ],
          ),
        ),
      ),
    );
  }
}
