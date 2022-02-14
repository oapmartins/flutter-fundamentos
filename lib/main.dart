import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/home_page.dart' as navegacao;
import 'package:flutter_fundamentos/navegacao/page1.dart';

import 'navegacao/page2.dart';
import 'navegacao/page3.dart';
import 'navegacao/page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: navegacao.HomePage(),
      routes: {
        '/' : (_) => navegacao.HomePage(),
        Page1.routName: (_) => Page1(),
        Page2.routName: (_) => Page2(),
        Page3.routName: (_) => Page3(),
        Page4.routName: (_) => Page4(),
      },
    );
  }
}
