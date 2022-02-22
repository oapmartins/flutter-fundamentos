import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page1.dart';

class Page4 extends StatelessWidget {

  const Page4({ Key? key }) : super(key: key);
  static final String routName = '/page4';

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      appBar: AppBar(
        title: const Text('Página 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Page1 via PAGE'),
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                  ),
                  (route) => false,
                );
              },
            ),
            ElevatedButton(
              child: Text('Page1 via NAMED'),
              onPressed: () {
                Navigator.of(context).pushNamed(Page1.routName);
              },
            ),
            ElevatedButton(
              child: Text('POP'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}