import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.access_time_outlined),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20,
                offset: Offset(10, 10),
              ),
              BoxShadow(
                color: Colors.green,
                blurRadius: 20,
                offset: Offset(-10, -10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
