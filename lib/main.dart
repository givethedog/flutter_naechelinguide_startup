import 'package:flutter/material.dart';
import 'package:flutternaechelinguidestartup/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
        title: 'home',
        home: SplashScreen()


    );
  }
}