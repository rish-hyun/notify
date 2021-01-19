import 'package:flutter/material.dart';
import 'package:notify/screen/onboarding/create_join.dart';
import '../../resource/custom_widget.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                //helperText: widget.label,
                labelText: 'Tell us your name',
                //hintText: widget.label,
                //suffixText: 'Suf TExt',
              ),
            ),
          ),
          RoundFlatButton(
            text: 'Continue',
            height: 50,
            fontSize: 17,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      CreateJoin(),
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
