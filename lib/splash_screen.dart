import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:async';
import 'package:flutternaechelinguidestartup/home_screen.dart';
import 'package:flutternaechelinguidestartup/login_screen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();

    _mockCheckForSession().then(
            (status) {
          if (status) {
            _navigateToHome();
          } else {
            _navigateToLogin();
          }
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen()
        )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen()
        )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[

            Shimmer.fromColors(
              baseColor: Color(0xffd74b3b),
              highlightColor: Color(0xffefb7b0),
              child: Container(
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                          "NAECHELIN GUIDE",                                          // 어플 이름
                          style: TextStyle(
                            fontSize: 40.0,                                           // 글자 크기
                            fontFamily: 'Franklin',                                   // 글자 폰트
                          )
                      ),
                      Text(
                          "A BETTER WAY TO FULL",                                     // 어플 이름
                          style: TextStyle(
                            fontSize: 20.0,                                           // 글자 크기
                            fontFamily: 'Franklin',                                   // 글자 폰트
                          )
                      )
                    ],
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

