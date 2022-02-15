import 'package:flutter/material.dart';

import 'detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: Column(children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                settings: RouteSettings(
                  name: 'detalhe',
                  arguments: {
                    'id': 10,
                  },
                ),
                builder: (context) => Detalhe(),
              ),
            );
          },
          child: Text('Detalhes'),
        ),
      ]),
    );
  }
}
