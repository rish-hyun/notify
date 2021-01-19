import 'package:flutter/material.dart';

void main() {
  runApp(Notify());
}

class Notify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notify',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: Icon(
            Icons.assignment,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              color: Colors.black,
              tooltip: 'Close',
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text('Notify'),
                    Text('//todo simplicity'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RoundFlatButton('Create new Noticeboard'),
                    RoundFlatButton('Join a noticeboard'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

