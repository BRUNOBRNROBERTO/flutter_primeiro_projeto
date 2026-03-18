import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View')),
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          return Divider(color: Colors.red);
        },
        itemBuilder: (context, index) {
          print('Carregando o indice $index');
          return ListTile(
            title: Text('Indice $index'),
            leading: CircleAvatar(backgroundImage: NetworkImage('')),
            trailing: CircleAvatar(),
          );
        },
      ),
    );
  }
}
