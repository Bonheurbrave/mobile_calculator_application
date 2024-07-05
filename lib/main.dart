import 'package:flutter/material.dart';
import "package:bobo/pages/calculator.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Calculator" , style: TextStyle(color: Colors.white),),
        ),
        body: Calculator(),
      ),
    ));
  }
}
