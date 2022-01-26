import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/home_page_stateless.dart';

class HomePageStateful extends StatefulWidget {
  const HomePageStateful({Key? key}) : super(key: key);

  @override
  _HomePageStatefulState createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  String texto = 'Estou no statelessWidget';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => HomePageStateless()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  texto = 'Alterei o texto do StatelessWidget';
                });
              },
              child: Text('Alterar Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
