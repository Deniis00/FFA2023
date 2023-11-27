import 'package:app_ffa_2023/src/pages/configuraciones_pages.dart';
import 'package:app_ffa_2023/src/pages/entrada_pages.dart';
import 'package:app_ffa_2023/src/pages/inicio_page.dart';
import 'package:app_ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';


Future<void> main(List<String> args) async {
   WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FFA 2023',
         debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        initialRoute: 'inicio',
        onGenerateRoute: (RouteSettings settings) {
          var routes = <String, WidgetBuilder>{
            'inicio': (ctx) => const InicioPage(),
            'configuraciones': (ctx) => const ConfiguracionesPage(),
            'entrada': (ctx) => const EntradaPages(),
          };

          WidgetBuilder builder = routes[settings.name]!;
          return MaterialPageRoute(builder: (ctx) => builder(ctx));
        },
    );
  }
}
