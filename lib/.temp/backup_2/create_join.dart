import 'package:flutter/material.dart';

import 'package:notify/custom_widgets.dart';

class CreateJoin extends StatelessWidget {
  Widget build(BuildContext context) {
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
                onTap: () {},
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
}