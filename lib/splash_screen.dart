import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[

//            Opacity(
//                opacity: 0.5,
//                child: Image.asset('assets/images/logo.jpg')
//            ),

            Shimmer.fromColors(
              baseColor: Color(0xffd74b3b),
              highlightColor: Color(0xffefb7b0),
              child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                          "NAECHELIN GUIDE",                                            // 어플 이름
                          style: TextStyle(
                              fontSize: 40.0,                                           // 글자 크기
                              fontFamily: 'Franklin',                                   // 글자 폰트
//                              shadows: <Shadow>[
//                                Shadow(
//                                    blurRadius: 10.0,
//                                    color: Colors.black87,
//                                    offset: Offset.fromDirection(120, 5)
//                                )
//                              ]
                          )
                      ),
                      Text(
                          "A BETTER WAY TO FULL",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Franklin',
//                              shadows: <Shadow>[
//                                Shadow(
//                                    blurRadius: 10.0,
//                                    color: Colors.black87,
//                                    offset: Offset.fromDirection(120, 2)
//                                )
//                              ]

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
