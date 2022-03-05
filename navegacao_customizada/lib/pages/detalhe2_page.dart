import 'package:flutter/material.dart';

class Detalhe2Page extends StatelessWidget {
  const Detalhe2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe 2'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Voltar'),
          onPressed: () {
            Navigator.of(context).pop('Iphone 13');
          },
        ),
      ),
    );
  }
}
