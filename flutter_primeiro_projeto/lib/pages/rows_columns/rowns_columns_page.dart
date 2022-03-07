import 'package:flutter/material.dart';

class RownsColumnsPage extends StatelessWidget {
  const RownsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
      ),
      body: Container(
        width: 400,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text('Elemento 1'),
              color: Colors.blue,
            ),
            Text('Elemento 2'),
            Text('Elemento 3'),
          ],
        ),
      ),
    );
  }
}
