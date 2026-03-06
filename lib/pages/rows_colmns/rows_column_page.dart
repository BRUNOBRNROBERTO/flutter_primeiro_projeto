import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows & Column')),
      body: Container(
        width: 400,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 200,
              child: Column(
                children: [
                  Container(color: Colors.blue, child: Text('Element 1')),
                  Text('Element 2'),
                  Text('Element 3'),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text('25'), Text(''), Text('min')],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
