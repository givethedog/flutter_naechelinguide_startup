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
        home: SplashScreen()               // StartSplashScreen을 홈으로 설정함
    );
  }
}