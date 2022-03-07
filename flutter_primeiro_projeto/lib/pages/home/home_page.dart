import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowColumns,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowColumns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                default:
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  child: Text('Container'),
                  value: PopupMenuPages.container,
                ),
                const PopupMenuItem<PopupMenuPages>(
                  child: Text('Rows and Columns'),
                  value: PopupMenuPages.rowColumns,
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
