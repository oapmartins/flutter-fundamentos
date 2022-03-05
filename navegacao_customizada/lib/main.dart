import 'package:flutter/material.dart';
import 'package:navegacao_customizada/pages/detalhe2_page.dart';
import 'package:navegacao_customizada/pages/detalhe_page.dart';
import 'package:navegacao_customizada/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        NavigatorObserver(),
      ],
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const HomePage(),
          );
        }

        if (settings.name == '/detalhe') {
          final parametro = settings.arguments as String?;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(
              parametro: parametro ?? 'Não foi enviado parâmetro',
            ),
          );
        }
      },
      routes: {
        '/': (_) => HomePage(),
        '/detalhe2': (_) => Detalhe2Page(),
      },
    );
  }
}
