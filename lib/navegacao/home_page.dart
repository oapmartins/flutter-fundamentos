import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Page2 via PAGE'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page2(),
                    settings: RouteSettings(name: 'page2'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Page2 via NAMED'),
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
