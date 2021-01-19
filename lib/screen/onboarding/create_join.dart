import 'package:flutter/material.dart';
import 'package:notify/screen/create/create_notice_board.dart';
import 'package:notify/screen/join/join_notice_board.dart';
import '../../resource/custom_widget.dart';

class CreateJoin extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RoundFlatButton(
            text: 'Create new Noticeboard',
            height: 50,
            fontSize: 17,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      CreateNoticeBoard(),
                  transitionsBuilder: (context, animation, animation2, child) =>
                      FadeTransition(opacity: animation, child: child),
                  transitionDuration: Duration(milliseconds: 500),
                ),
              );
            },
          ),
          RoundFlatButton(
            text: 'Join a noticeboard',
            height: 50,
            fontSize: 17,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      JoinNoticeBoard(),
                  transitionsBuilder: (context, animation, animation2, child) =>
                      FadeTransition(opacity: animation, child: child),
                  transitionDuration: Duration(milliseconds: 500),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
