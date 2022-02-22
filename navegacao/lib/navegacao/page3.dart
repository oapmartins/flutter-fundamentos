import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  static final String routName = '/page3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Page4 via PAGE'),
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page4'),
                    builder: (context) => Page4(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Page4 via NAMED'),
              onPressed: () {
                Navigator.of(context).pushNamed(Page4.routName);
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
