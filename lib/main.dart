import 'package:flutter/material.dart';
import 'package:flutternaechelinguidestartup/constants.dart';
import 'package:flutternaechelinguidestartup/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'NAECHELINE GUIDE',
        theme: ThemeData(
          fontFamily: "GodoB",
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: Color(0xfff4a261),
          textTheme: TextTheme(
            // ignore: deprecated_member_use
            headline: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(fontWeight: FontWeight.normal),
            // ignore: deprecated_member_use
            title: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen() // StartSplashScreen을 홈으로 설정함
        );
  }
}
