import 'package:flutter/material.dart';

class SpacerScreen extends StatelessWidget {
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
        title: Text('Spacer Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              child: Text('MainAxisAlignment.start'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
              height: 20.0,
              child: Text('MainAxisAlignment.end'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
              height: 20.0,
              child: Text('MainAxisAlignment.center'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
              height: 20.0,
              child: Text('MainAxisAlignment.spaceAround'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
              height: 20.0,
              child: Text('MainAxisAlignment.spaceBetween'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(
              height: 20.0,
              child: Text('MainAxisAlignment.spaceEvenly'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                buildBox(Colors.red),
                Expanded(child: Container()),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                buildBox(Colors.red),
                Spacer(),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                buildBox(Colors.red),
                Spacer(flex: 2),
                buildBox(Colors.green),
                Spacer(),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                buildBox(Colors.red),
                SizedBox(width: 40.0),
                buildBox(Colors.green),
                Spacer(),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildBox(Colors.red),
                Spacer(),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Spacer(),
                buildBox(Colors.red),
                buildBox(Colors.green),
                buildBox(Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
