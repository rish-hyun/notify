import 'package:flutter/material.dart';
import 'package:notify/custom_widgets.dart';
//import 'package:notify/dashboard.dart';
//import 'package:notify/dashboard.dart';
//import 'package:notify/create_join.dart';

void main() => runApp(Notify());

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notify',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      home: Scaffold(
        appBar: Bar(),
        body: isLoggedIn ? dashBoard() : createJoin(),
      ),
    );
  }

  Widget createJoin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              'Notify',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '//todo simplicity',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RoundFlatButton(
                yourText: 'Create new Noticeboard',
                buttonHeight: 50,
                textFontSize: 17,
                onTap: () {
                  setState(() {
                    isLoggedIn = true;
                  });
                },
              ),
              RoundFlatButton(
                yourText: 'Join a noticeboard',
                buttonHeight: 50,
                textFontSize: 17,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget createNoticeBoard() {
    return Container(
      child: Text('This is CreateNoticeBoard'),
    );
  }

  Widget dashBoard() {
    return Container(
      child: Text('This is DashBoard'),
    );
  }
}

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar
      title: Row(
        children: <Widget>[
          Icon(Icons.assignment),
          Text(
            'Notify',
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
