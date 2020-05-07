import 'package:flutter/material.dart';
import 'package:flutternaechelinguidestartup/constants.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'My Page',
                  style: TextStyle(fontSize: 20, color: kTextColor),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.black26,
                  foregroundColor: Colors.black,
                  maxRadius: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text('upload your avatar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
