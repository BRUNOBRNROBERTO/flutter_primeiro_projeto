import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Botões e Rotações de Texto')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    color: Colors.red,
                    child: Text('Bruno Roberto'),
                  ),
                ),
                Icon(Icons.ac_unit),
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize: Size(50, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                ),
              ),
              child: Text('Salvar'),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: Size(120, 36),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.airplane_ticket),
              label: Text('Modo Avião', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shadowColor: Colors.blue,
                minimumSize: Size(120, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Salvar', style: TextStyle(color: Colors.white)),
              style: ButtonStyle(
                shadowColor: WidgetStateProperty.all(Colors.blue),
                // minimumSize: WidgetStateProperty.all(
                //   Size(120, 50),
                //   ),
                minimumSize: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Size(150, 150);
                  }
                  return Size(120, 50);
                }),
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.black;
                  } else if (states.contains(WidgetState.hovered)) {
                    return Colors.amber;
                  }
                  return Colors.red;
                }),
              ),
            ),
            SizedBox(height: 10),
            InkWell(onTap: () {}, child: Text('InkWeel')),
            GestureDetector(
              child: Text('Gesture Detector'),
              onTap: () => print('Gesture Clicado'),
              onVerticalDragStart: (_) => print('Gesture Movimentado'),
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 5),
                    color: Colors.red,
                  ),
                ],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
