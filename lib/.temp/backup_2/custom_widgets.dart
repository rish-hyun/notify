
import 'package:flutter/material.dart';

class RoundFlatButton extends StatelessWidget {
  final String yourText;
  final double buttonHeight;
  final double textFontSize;
  final VoidCallback onTap;
  RoundFlatButton({
    this.yourText,
    this.buttonHeight,
    this.textFontSize,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: FlatButton(
        height: buttonHeight,
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.black),
        ),
        child: Text(
          yourText,
          style: TextStyle(fontSize: textFontSize),
        ),
      ),
    );
  }
}