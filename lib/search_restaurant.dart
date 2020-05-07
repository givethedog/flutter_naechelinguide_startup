import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternaechelinguidestartup/constants.dart';

class SearchRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40, bottom: 20),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "모두", active: true),
                CategoryTitle(title: "한식"),
                CategoryTitle(title: "양식"),
                CategoryTitle(title: "일식"),
                CategoryTitle(title: "중식"),
                CategoryTitle(title: "고기"),
                CategoryTitle(title: "냉면"),
                CategoryTitle(title: "분식"),
                CategoryTitle(title: "나머지"),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: Icon(Icons.search),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RestaurantCard(
                  title: "해주냉면",
                  image: "assets/images/a2.jpg",
                  character: "냉면, 매운맛",
                  address: "서울 송파구 백제고분로7길 8-16 1층",
                  phone: "02-424-7192",
                ),
                RestaurantCard(
                  title: "장안동 닭한마리",
                  image: "assets/images/a1.jpg",
                  character: "닭한마리, 얼큰, 감칠맛",
                  address: "서울 동대문구 답십리로 311 1층",
                  phone: "02-2248-0413",
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final String title;
  final String image;
  final String character;
  final String address;
  final String phone;
  final bool parking;

  const RestaurantCard({
    Key key,
    this.title,
    this.image,
    this.character,
    this.address,
    this.phone,
    this.parking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      height: 400,
      width: 270,
      child: Stack(
        children: <Widget>[
          // Big Light background
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 380,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: Color(0xffe9c46a),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(2, 2),
                    ),
                  ]),
            ),
          ),
          // Rounded background circle
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfff4a261),
              ),
            ),
          ),
          // Restaurant Image
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xfff4a261)),
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Positioned(
            top: 201,
            left: 40,
            child: Container(
              width: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    character,
                    style: TextStyle(color: kTextColor.withOpacity(.8)),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      address,
                      style: TextStyle(color: kTextColor.withOpacity(.4)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    phone,
                    style: TextStyle(color: kTextColor.withOpacity(.4)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryTitle({
    Key key,
    this.active = false,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
              color: active ? kPrimaryColor : kTextColor.withOpacity(.4),
            ),
      ),
    );
  }
}
