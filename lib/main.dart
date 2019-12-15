import 'package:flutter/material.dart';
import './index/Index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutterstudy",
      home: Index(),
    );
  }
}

