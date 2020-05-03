import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
        backgroundColor: Colors.white,
        body:
        Center(
          child: Image.asset('assets/logo.jpg'), //   <-- image
        )

      ),
    );
  }
}