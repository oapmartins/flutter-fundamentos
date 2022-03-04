import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);
  static final String routName = '/page2';

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
                    settings: RouteSettings(name: 'page3'),
                    builder: (context) => Page3(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Page3 via NAMED'),
              onPressed: () {
                Navigator.of(context).pushNamed(Page3.routName);
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
