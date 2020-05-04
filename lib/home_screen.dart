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
      appBar: new AppBar(
        title: new Text('NAECHELIN GUIDE'),
        bottom: new TabBar(controller: _controller,
            tabs: <Tab>[                                 // 앱바 살릴려면 이거 복구
              new Tab(text: "NEW"),
              new Tab(text: "HOTELS"),
              new Tab(text: "FOOD"),
              new Tab(text: "FUN"),
            ]),
      ),
      body: new TabBarView(
        controller: _controller,
        children: <Widget>[
          new NewPage(_index),
          new HotelsPage(_index),
          new FoodPage(_index),
          new FunPage(_index),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _index,
          onTap: (int _index) {
            setState(() {
              this._index = _index;
            });
          },
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                title: new Text('Location')

            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text("MyPage"),
            ),
          ]),
    );
  }
}

class NewPage extends StatelessWidget {
  final int index;

  NewPage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('NewPage, index: $index'),
    );
  }
}

class HotelsPage extends StatelessWidget {
  final int index;

  HotelsPage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('HotelsPage, index: $index'),
    );
  }
}

class FoodPage extends StatelessWidget {
  final int index;

  FoodPage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('FoodPage, index: $index'),
    );
  }
}

class FunPage extends StatelessWidget {
  final int index;

  FunPage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('FunPage, index: $index'),
    );
  }
}


