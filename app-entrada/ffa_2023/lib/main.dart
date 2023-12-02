import 'package:ffa_2023/src/pages/configuraciones_pages.dart';
import 'package:ffa_2023/src/pages/entrada_pages.dart';
import 'package:ffa_2023/src/pages/inicio_page.dart';
import 'package:ffa_2023/src/pages/lista_funcionarios.dart';
import 'package:ffa_2023/src/pages/mire_pantalla_page.dart';
import 'package:ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(const MyApp());
  customEasy();
}

void customEasy() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.dualRing
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 15.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.grey
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.black38.withOpacity(0.6)
    ..userInteractions = false
    ..dismissOnTap = false
    ..maskType = EasyLoadingMaskType.custom;
}

class MyApp extends StatefulWidget {
 // const MyApp({super.key});
 const MyApp({Key? key}) : super(key: key);


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'AMPLESOFT', // Utiliza el nombre de tu fuente
        // Otros ajustes del tema aquí
      ),
      builder:   EasyLoading.init(),
      title: 'FFA 2023',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: 'inicio',
      navigatorObservers: [routeObserver],
      onGenerateRoute: (RouteSettings settings) {
        var routes = <String, WidgetBuilder>{
          'inicio': (ctx) => const InicioPage(),
          'configuraciones': (ctx) => const ConfiguracionesPage(),
          'entrada': (ctx) => const EntradaPages(),
          'mire_pantalla': (ctx) => const MirePantalla(),
          'list_funcionarios': (ctx) => const ListaFuncionarioPages(),
        };

        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(builder: (ctx) => builder(ctx));
      },
    );
  }
}
