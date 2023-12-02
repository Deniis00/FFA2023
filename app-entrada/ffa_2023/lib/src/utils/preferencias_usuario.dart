import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  late SharedPreferences _prefs;

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String get apiUrl {
    return _prefs.getString('apiUrl') ??
        ''; // Devuelve una cadena vacía si es nulo
  }

  set apiUrl(String valor) {
    _prefs.setString('apiUrl', valor);
  }

   String get urlWS {
    return _prefs.getString('urlWS') ??
        ''; // Devuelve una cadena vacía si es nulo
  }

  set urlWS(String valor) {
    _prefs.setString('urlWS', valor);
  }

  String get passWS {
    return _prefs.getString('passWS') ??
        ''; // Devuelve una cadena vacía si es nulo
  }

  set passWS(String valor) {
    _prefs.setString('passWS', valor);
  }

   String get codigoAcceso {
    return _prefs.getString('codigo_acceso') ??
        ''; // Devuelve una cadena vacía si es nulo
  }

  set codigoAcceso(String valor) {
    _prefs.setString('codigo_acceso', valor);
  }
}
