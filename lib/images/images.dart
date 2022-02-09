import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                'Imagem paisagem',
                style: TextStyle(color: Colors.white, backgroundColor: Colors.red.withOpacity(0.3)),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage('assets/images/Capturar.PNG'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Image.network(
              'https://coodesh.com/blog/wp-content/uploads/2021/10/mobile-flutter-1-1152x648.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
