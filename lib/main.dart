import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_villa/screens/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
