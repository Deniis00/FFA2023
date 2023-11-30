import 'package:ffa_2023/src/pages/configuraciones_pages.dart';
import 'package:ffa_2023/src/pages/entrada_pages.dart';
import 'package:ffa_2023/src/pages/inicio_page.dart';
import 'package:ffa_2023/src/utils/preferencias_usuario.dart';
import 'package:flutter/material.dart';


Future<void> main(List<String> args) async {
   WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

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
