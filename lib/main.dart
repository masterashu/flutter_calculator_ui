import 'package:flutter/material.dart';
import 'calc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Brightness theme;

  MyApp({this.theme = Brightness.light});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: theme,
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
