import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.access_time_outlined),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(child: Text('Home Page')),
    );
  }
}
