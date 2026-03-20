import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  scrolls_single_child,
  scrolls_list_view,
  dialogs,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoes_rotacao_texto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                case PopupMenuPages.scrolls_single_child:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                case PopupMenuPages.scrolls_list_view:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text('Row & Columns'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('MediaQuery'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layout_builder,
                  child: Text('Layout Builder'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacao_texto,
                  child: Text('Botões e Rotação de Texto'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_single_child,
                  child: Text('Scroll SingleChild'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_list_view,
                  child: Text('Scroll ListView'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
              ];
            },
          ),
        ],
      ),
      //body: Theme(
      //data: ThemeData(primaryColor: Colors.red),
      //child: Center(
      //child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //children: [
      //ElevatedButton(onPressed: () {}, child: Text('Botão X')),
      //Container(
      //height: 100,
      // width: 100,
      //color: Theme.of(context).colorScheme.primary,
      //child: Center(
      //child: Text(
      //'Botao X',
      //style: TextStyle(
      //color: Theme.of(context).colorScheme.onPrimary,
    );
    // ),
    //),
    //),
    //],
    //),
    //),
    //),
    //  body: Container(),
    //);
  }
}
