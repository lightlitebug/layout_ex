import 'package:flutter/material.dart';

class ExpandedFlexibleScreen extends StatelessWidget {
  Widget buildBox(Color color) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded vs Flexible'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              buildBox(Colors.red),
              buildBox(Colors.green),
              buildBox(Colors.blue),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: buildBox(Colors.red),
              ),
              Expanded(
                flex: 2,
                child: buildBox(Colors.green),
              ),
              Expanded(
                child: buildBox(Colors.blue),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: buildBox(Colors.red),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: buildBox(Colors.green),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              buildBox(Colors.red),
              SizedBox(width: 10.0),
              Expanded(
                child: Row(
                  children: <Widget>[
                    buildBox(Colors.green),
                    Expanded(child: buildBox(Colors.blue)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                Container(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Row(
                    children: <Widget>[
                      buildBox(Colors.red),
                      buildBox(Colors.green),
                      Expanded(
                        child: buildBox(Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
