import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Page3 via PAGE'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page3(),
                    settings: RouteSettings(name: 'page3'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Page3 via NAMED'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
