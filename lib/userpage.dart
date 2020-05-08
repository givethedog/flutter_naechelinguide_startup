import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutternaechelinguidestartup/constants.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                UserInfo(),
                Reviews(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '별점 분포',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        BarChartSample3(),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '4.1',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text('별점 평균'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '351',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text('별점 개수'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '4.0',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text('최다 별점'),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(height: 10),
            ],
          ),
          Container(
            child: Text(
              "NAECHELINE GUIDE",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Container(
            child: Text('취향분석'),
          ),
          SizedBox(height: 10),
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.black26,
              foregroundColor: Colors.black,
              maxRadius: 40,
              child: Icon(Icons.person, size: 40),
            ),
          ),
        ],
      ),
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '평가수',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '4',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('돈까스'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '7',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('냉면'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '0',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('자장면'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BarChartSample3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.9,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Colors.transparent,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 20,
            barTouchData: BarTouchData(
              enabled: false,
              touchTooltipData: BarTouchTooltipData(
                tooltipBgColor: Colors.transparent,
                tooltipPadding: const EdgeInsets.all(0),
                tooltipBottomMargin: 10,
                getTooltipItem: (
                  BarChartGroupData group,
                  int groupIndex,
                  BarChartRodData rod,
                  int rodIndex,
                ) {
                  return BarTooltipItem(
                    rod.y.round().toString(),
                    TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: SideTitles(
                showTitles: true,
                textStyle: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                margin: 20,
                getTitles: (double value) {
                  switch (value.toInt()) {
                    case 0:
                      return '1.0';
                    case 1:
                      return '2.0';
                    case 2:
                      return '3.0';
                    case 3:
                      return '4.0';
                    case 4:
                      return '5.0';
                    default:
                      return '';
                  }
                },
              ),
              leftTitles: SideTitles(showTitles: false),
            ),
            borderData: FlBorderData(
              show: false,
            ),
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(
                    y: 8,
                    color: kPrimaryColor,
                    width: 30,
                    borderRadius: BorderRadius.zero)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                    y: 10,
                    color: kPrimaryColor,
                    width: 30,
                    borderRadius: BorderRadius.zero)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                    y: 14,
                    color: kPrimaryColor,
                    width: 30,
                    borderRadius: BorderRadius.zero)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    y: 15,
                    color: kPrimaryColor,
                    width: 30,
                    borderRadius: BorderRadius.zero)
              ], showingTooltipIndicators: [
                0
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    y: 13,
                    color: kPrimaryColor,
                    width: 30,
                    borderRadius: BorderRadius.zero)
              ], showingTooltipIndicators: [
                0
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
