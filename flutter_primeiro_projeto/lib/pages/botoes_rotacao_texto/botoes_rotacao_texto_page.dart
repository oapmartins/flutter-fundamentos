import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotações de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text('Octávio Augusto '),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Salvar'),
              style: TextButton.styleFrom(
                minimumSize: const Size(50, 10),
                primary: Colors.red,
                padding: const EdgeInsets.all(10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.abc_outlined)),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airline_seat_flat),
              label: Text('tests'),
            ),
          ],
        ),
      ),
    );
  }
}
