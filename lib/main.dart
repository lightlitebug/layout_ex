import 'package:flutter/material.dart';

import 'package:layout_ex/screens/spacer_screen.dart';
import 'package:layout_ex/screens/expanded_flexible_screen.dart';
import 'package:layout_ex/screens/align_positioned_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  CustomButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 250.0,
      height: 50.0,
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              title: 'Spacer Example',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return SpacerScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            CustomButton(
              title: 'Expanded vs Flexible',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return ExpandedFlexibleScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            CustomButton(
              title: 'Align vs Positioned',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) {
                      return AlignPositionedScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
