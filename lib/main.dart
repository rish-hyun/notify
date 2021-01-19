import 'package:flutter/material.dart';
import 'resource/app_theme.dart';

import 'screen/onboarding/onboarding.dart';

void main() {
  runApp(Notify());
}

class Notify extends StatefulWidget {
  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notify',
      theme: AppTheme.themeLight,
      home: isLoggedIn ? Text('Not Logged In page required') : OnBoarding(),
    );
  }
}
