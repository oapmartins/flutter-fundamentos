import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/home_page.dart' as navegacao;
import 'package:flutter_fundamentos/home/home_page.dart';
import 'package:flutter_fundamentos/images/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: navegacao.HomePage(),
    );
  }
}
