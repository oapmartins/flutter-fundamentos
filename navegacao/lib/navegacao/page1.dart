import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {

  const Page1({ Key? key }) : super(key: key);
  static final String routName = '/page1';

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Página 1'),),
           body: Container(),
       );
  }
}