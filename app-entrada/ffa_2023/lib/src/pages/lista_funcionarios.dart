import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:ffa_2023/src/consultas/consulta_api.dart';
import 'package:ffa_2023/src/model/funcionario_model.dart';
import 'package:ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListaFuncionarioPages extends StatefulWidget {
  const ListaFuncionarioPages({Key? key}) : super(key: key);

  @override
  State<ListaFuncionarioPages> createState() => _ListaFuncionarioPagesState();
}

class _ListaFuncionarioPagesState extends State<ListaFuncionarioPages>
    with RouteAware {
  final pref = PreferenciasUsuario();
  List<FuncionarioModel> funcionarios = [];
  List<FuncionarioModel> filteredFuncionarios = [];

  @override
  void initState() {
    super.initState();
    cargarListadoFuncionarios();
  }

  void filterFuncionarios(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredFuncionarios = funcionarios;
      });
    } else {
      setState(() {
        filteredFuncionarios = funcionarios
            .where((funcionario) =>
                funcionario.nombre.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  Future<void> cargarListadoFuncionarios() async {
    final consultaApi = ConsultaApi();
    final response = await consultaApi.obtenerListadoFuncionarios();

    if (response['success'] == 1) {
      if (response['data'] != null) {
        setState(() {
          funcionarios = List<FuncionarioModel>.from(
            response['data']
                .map((funcionario) => FuncionarioModel.fromJson(funcionario)),
          );
          filteredFuncionarios = funcionarios;
        });
      }
    } else {
      await showAlertDialog2('Atención!!', response['message']);
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    String searchValue = '';

    return Scaffold(
      appBar: EasySearchBar(
        title: const Text(
          'Listado de Funcionarios',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color(0xFFC3222B),
        iconTheme: const IconThemeData(color: Colors.white),
        searchBackIconTheme: const IconThemeData(color: Colors.black),
        searchClearIconTheme: const IconThemeData(color: Colors.black),
        searchCursorColor: Colors.black,
        onSearch: (value) {
          setState(() {
            searchValue = value;
            filterFuncionarios(searchValue);
          });
        },
      ),
      body: RefreshIndicator(
        onRefresh: () => cargarListadoFuncionarios(),
        child: ListView.builder(
          itemCount: filteredFuncionarios.length,
          /*filteredFuncionarios.isNotEmpty || searchValue != ''
                ? filteredFuncionarios.length
                : funcionarios.length,*/ //funcionarios.length,
          itemBuilder: (context, index) {
            //final funcionario = funcionarios[index];
            final funcionario = filteredFuncionarios[
                    index] /*filteredFuncionarios.isNotEmpty || searchValue != ''
                ? filteredFuncionarios[index]
                : funcionarios[index]*/
                ;

            return Dismissible(
              key: UniqueKey(),
              confirmDismiss: (direction) async {
                if (direction == DismissDirection.startToEnd) {
                  await actualizarEstadoFuncionario(funcionario);
                  return true;
                }
                return false;
              },
              direction: DismissDirection.startToEnd,
              background: slideRightBackground(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 14.0),
                    child: crearItem(funcionario),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 0.5,
                    thickness: 0.4,
                    indent: 15,
                    endIndent: 15,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget crearItem(FuncionarioModel funcionario) {
    return SizedBox(
      height: 30.0,
      child: ListTile(
        title: Transform.translate(
          offset: const Offset(0, -20),
          child: Text(
            funcionario.nombre,
            style: const TextStyle(fontSize: 20),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  void mostrarMensaje2(String titulo, String mensaje, String nombre) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          backgroundColor: const Color(0xFFC3222B),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Center(
            child: Text(titulo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          content: SingleChildScrollView(
            scrollDirection: Axis.vertical, //.horizontal
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(mensaje,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.white)),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(nombre,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 15.0, color: Colors.white))
                ],
              ),
            ),
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                child: const Text(
                  'Aceptar',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> actualizarEstadoFuncionario(FuncionarioModel funcionario) async {
    try {
      final consultaApi = ConsultaApi();
      Map info = await consultaApi.actualizarEstadoFuncionario(funcionario.id);

      if (info['success'] == 0) {
        EasyLoading.show(status: "No se ha podido Actualizar");
      } else if (info['success'] == 1) {
        mostrarMensaje2("FFA 2023", "BIENVENID@..", funcionario.nombre);
      }

      EasyLoading.dismiss();
      _actualizaListaFuncionarios();
    } catch (error) {
      EasyLoading.dismiss();
    }
  }

  void mostrarMensaje(String titulo, String mensaje, String nombreFuncionario) {
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
            "$mensaje $nombreFuncionario",
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

  void _actualizaListaFuncionarios() {
    setState(() {
      cargarListadoFuncionarios();
    });
  }

  Widget slideRightBackground() {
    return Container(
      color: Colors.green,
      child: const Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            Text(
              "Registrar Funcionario",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            Expanded(
              child: SizedBox(
                width: 20,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
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
