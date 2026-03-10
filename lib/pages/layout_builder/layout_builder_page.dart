import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  PreferredSizeWidget? get appBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Builder')),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.redAccent,
                  width: constraints.maxWidth * .95,
                  height: constraints.maxHeight * .5,
                ),
                Container(
                  color: Colors.blue,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
