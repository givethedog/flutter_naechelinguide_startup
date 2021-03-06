import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutternaechelinguidestartup/search_restaurant.dart';
import 'package:flutternaechelinguidestartup/location.dart';
import 'package:flutternaechelinguidestartup/list_restaurant.dart';
import 'package:flutternaechelinguidestartup/userpage.dart';

class HomeScreen extends StatefulWidget {
  @override
  State createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = SearchRestaurant(); // To Search
        break;
      case 1:
        child = ListRestaurant();
        break;
      case 2:
        child = SearchLocation();
        break;
      case 3:
        child = UserPage();
        break;
    }

    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Color(0xff2a9d8f),
          selectedItemColor: Color(0xffe9c46a),
          unselectedItemColor: Color(0xff264653),
          type: BottomNavigationBarType
              .fixed, // this line can BottomBar has 4 items
          currentIndex: _index,
          onTap: (int _index) {
            setState(() {
              this._index = _index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: SizedBox
                  .shrink(), // Workaround : BottomNavigationBar without Text
              //title: new Text("Home"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.restaurant),
              title: SizedBox
                  .shrink(), // Workaround : BottomNavigationBar without Text
              //title: new Text("Restaurant"),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: SizedBox
                  .shrink(), // Workaround : BottomNavigationBar without Text
              //title: new Text('Location')
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: SizedBox
                  .shrink(), // Workaround : BottomNavigationBar without Text
              //title: new Text("MyPage"),
            ),
          ]),
    );
  }
}
