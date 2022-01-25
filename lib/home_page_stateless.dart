import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  String texto = 'Estou no statelessWidget';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () => {
                texto = 'Alterei o texto do StatelessWidget',
              },
              child: Text('Alterar Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
