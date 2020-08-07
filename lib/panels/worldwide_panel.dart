import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  final Map worldData;

  const WorldWidePanel({Key key, this.worldData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics:
            NeverScrollableScrollPhysics(), //since its inside singlechildscrollview we have to make it non scrollable.
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:
              2, //width will be twice the height basically a rectangle
        ),
        children: <Widget>[
          StatusPanel(
              panelColor: Colors.red[100],
              titleColor: Colors.red,
              title: 'CONFIRMED',
              count: worldData['cases'].toString()),
          StatusPanel(
              panelColor: Colors.blue[100],
              titleColor: Colors.blue[900],
              title: 'ACTIVE',
              count: worldData['active'].toString()),
          StatusPanel(
              panelColor: Colors.green[100],
              titleColor: Colors.green,
              title: 'RECOVERED',
              count: worldData['recovered'].toString()),
          StatusPanel(
              panelColor: Colors.grey[100],
              titleColor: Colors.grey[900],
              title: 'DEATHS',
              count: worldData['deaths'].toString()),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color titleColor;
  final String title;
  final String count;
  StatusPanel({this.panelColor, this.titleColor, this.title, this.count});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: titleColor),
            ),
          ),
          Text(
            count,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: titleColor),
          )
        ],
      ),
    );
  }
}
