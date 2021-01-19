import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notify/custom_button.dart';
import 'package:notify/app_theme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.assignment,
                    color: Colors.black,
                  ),
                ),
                SvgPicture.asset(
                  'assets/LOGO.svg',
                  height: 100.0,
                  width: 100.0,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Notify'),
                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text('//todo simplicity')),
                  MixButton(
                    isRaised: false,
                    loading: false,
                    loadingSize: 24,
                    color: AppTheme.white,
                    minWidth: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {},
                    child: Text('Create new Noticeboard'),
                  ),
                  MixButton(
                    isRaised: false,
                    loading: false,
                    loadingSize: 24,
                    color: AppTheme.white,
                    minWidth: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black),
                    ),
                    onPressed: () {},
                    child: Text('Join a noticeboard'),
                  ),
                  //RoundFlatButton('Create new Noticeboard'),
                  //RoundFlatButton('Join a noticeboard'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
