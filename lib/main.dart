import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curso_flutter/src/app.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi primer app en Flutter',
      theme: ThemeData.dark(),
      home: MyAppForm(),

    );
  }
}