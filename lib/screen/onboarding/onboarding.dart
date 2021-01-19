import 'package:flutter/material.dart';
import 'package:notify/screen/onboarding/name.dart';
import '../../resource/custom_widget.dart';

class OnBoarding extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
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
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RoundFlatButton(
                text: 'Sign in as Guest',
                height: 50,
                fontSize: 17,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => Name(),
                      transitionsBuilder:
                          (context, animation, animation2, child) =>
                              FadeTransition(opacity: animation, child: child),
                      transitionDuration: Duration(milliseconds: 500),
                    ),
                  );
                },
              ),
              RoundFlatButton(
                text: 'Log in to your DashBoard',
                height: 50,
                fontSize: 17,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
