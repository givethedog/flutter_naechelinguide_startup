import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  @override
  State createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _controller;
  int _index;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

//      appBar: new AppBar(                                         // 앱바 살릴려면 여기부터
//        title: new Text('NAECHELIN GUIDE'),
//        bottom: new TabBar(controller: _controller,
//            tabs: <Tab>[                                 
//              new Tab(text: "ZHEE"),
//              new Tab(text: "MUNG"),
//              new Tab(text: "MOZZI"),
//              new Tab(text: "GGOMU"),
//            ]),
//      ),                                                         // 앱바 살릴려면 여기까지
      body: new TabBarView(
        controller: _controller,
        children: <Widget>[
          new ZHEE(_index),
          new MUNG(_index),
          new MOZZI(_index),
          new GGOMU(_index),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Color(0xffefb7b0),
          selectedItemColor: Color(0xffd74b3b),
          unselectedItemColor: Color(0xffd74b3b),
          type: BottomNavigationBarType.fixed,                     // this line can BottomBar has 4 items
          currentIndex: _index,
          onTap: (int _index) {
            setState(() {
              this._index = _index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: SizedBox.shrink(),                           // Workaround : BottomNavigationBar without Text
              //title: new Text("Home"),

            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.restaurant),
              title: SizedBox.shrink(),                           // Workaround : BottomNavigationBar without Text
              //title: new Text("Restaurant"),
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
              title: SizedBox.shrink(),                           // Workaround : BottomNavigationBar without Text
                //title: new Text('Location')
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: SizedBox.shrink(),                           // Workaround : BottomNavigationBar without Text
              //title: new Text("MyPage"),
            ),
                      ]),
    );
  }
}

class ZHEE extends StatelessWidget {
  final int index;

  ZHEE(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('ZHEE, index: $index'),
    );
  }
}

class MUNG extends StatelessWidget {
  final int index;

  MUNG(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('HotelsPage, index: $index'),
    );
  }
}

class MOZZI extends StatelessWidget {
  final int index;

  MOZZI(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('FoodPage, index: $index'),
    );
  }
}

class GGOMU extends StatelessWidget {
  final int index;

  GGOMU(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('FunPage, index: $index'),
    );
  }
}


