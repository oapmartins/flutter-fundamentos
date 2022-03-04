import 'package:flutter/material.dart';
import 'package:navegacao_customizada/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text('Ir para Detalhe'),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/detalhe',
                  arguments: 'Parametro x',
                );
              },
            ),
            TextButton(
              child: const Text('Ir para Detalhe PageRoute'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const DetalhePage(
                      parametro: 'Parametro pelo Page Route',
                    ),
                    settings: const RouteSettings(
                      name: '/detalhe',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
