import 'package:flutter/material.dart';

class Person {
  int age;
  String name;
  bool isLeftHand;

  Person(this.age, this.name, this.isLeftHand);
}

class PersonTile extends StatelessWidget {
  PersonTile(this._person);

  final Person _person;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(_person.name),
      subtitle: Text("${_person.age}세"),
      trailing: PersonHandIcon(_person.isLeftHand),
    );
  }
}

class PersonHandIcon extends StatelessWidget {
  PersonHandIcon(this._isLeftHand);

  final bool _isLeftHand;

  @override
  Widget build(BuildContext context) {
    if (_isLeftHand)
      return Icon(Icons.arrow_left);
    else
      return Icon(Icons.arrow_right);
  }
}

class HeaderTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.travel141.co.kr%2Fhongkong%2Fcentral-and-soho-best-restaurants%2F&psig=AOvVaw1D_Y1nHXMARlTguOQRDXyz&ust=1588768681988000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPDb99venOkCFQAAAAAdAAAAABAD"),
    );
  }
}

final List<String> entries = <String>['당근', '애기', '모찌', '꼬무'];
final List<int> colorCodes = <int>[100, 0, 100, 0];

class ListRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    //
    //
    return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 70,
            color: Colors.red[colorCodes[index]],
            child: Center(child: Text('${entries[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        });
  }
  //
  //
  //
}

//class ListRestaurant extends StatefulWidget {
//  @override
//  _ListRestaurantState createState() => _ListRestaurantState();
//}
//
//class _ListRestaurantState extends State<ListRestaurant> {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}
