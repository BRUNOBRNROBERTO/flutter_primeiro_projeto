import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('MediaQuery')),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.redAccent,
              width: mediaQuery.size.width,
              height: mediaQuery.size.height * .5,
            ),
          ],
        ),
      ),
    );
  }
}
