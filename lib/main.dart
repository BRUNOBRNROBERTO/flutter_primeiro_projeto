import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/home/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/midia_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_colmns/rows_column_page.dart';

void main() {
  runApp(DevicePreview(enabled: !kReleaseMode, builder: (_) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnPage(),
        '/media_query': (_) => MediaQueryPage(),
      },
    );
  }
}
