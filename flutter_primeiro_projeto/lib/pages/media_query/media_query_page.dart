import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final heightDispositivo = mediaQuery.size.height;
    final widhtDispositivo = mediaQuery.size.width;
    final statusBar = mediaQuery.padding.top;
    final appBar = AppBar(
        title: const Text('Media Query'),
      );
    final heightAppBarDefault = appBar.preferredSize.height;
    final heightBody = heightDispositivo - statusBar - heightAppBarDefault;

    return Scaffold(
      appBar: appBar,
      body: Center(
          child: Column(
        children: [
          Container(
            color: Colors.red,
            width: widhtDispositivo,
            height: heightBody * .5,
          ),
                    Container(
            color: Colors.green,
            width: widhtDispositivo,
            height: heightBody * .5,
          ),
        ],
      ),),
    );
  }
}
