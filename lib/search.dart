import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:getflutter/getflutter.dart';

var item = '';

List list = [
  "냉면",
  "돈까스",
  "용산구",
];

class SearchRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Shimmer.fromColors(
          baseColor: Color(0xffd74b3b),
          highlightColor: Color(0xffefb7b0),
          child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Text("NAECHELIN GUIDE", // 어플 이름
                      style: TextStyle(
                        fontSize: 40.0, // 글자 크기
                        fontFamily: 'Franklin', // 글자 폰트
                      )),
                ],
              )),
        ),
        GFSearchBar(
          searchList: list,
          searchQueryBuilder: (query, list) {
            return list
                .where(
                    (item) => item.toLowerCase().contains(query.toLowerCase()))
                .toList();
          },
          overlaySearchListItemBuilder: (item) {
            return Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                item,
                style: const TextStyle(fontSize: 18),
              ),
            );
          },
        ),
      ],
    ));
  }
}
