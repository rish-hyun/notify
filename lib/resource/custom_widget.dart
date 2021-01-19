import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notify',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '//todo simplicity',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({
    Key key,
    this.height = 100,
    //this.closeRequired = true,
  }) : super(key: key);

  final double height;
  //final bool closeRequired;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //automaticallyImplyLeading: true,
      leading: Icon(Icons.assignment),
      toolbarHeight: height,
      titleSpacing: 0,
      title: Text(
        'Notify',
        style: TextStyle(fontSize: 25),
      ),
      actions: [
        IconButton(
            //padding: EdgeInsets.all(0),
            iconSize: height - 15,
            icon: SvgPicture.asset(
              'assets/logo/logo.svg',
              fit: BoxFit.scaleDown,
            ),
            onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class RoundFlatButton extends StatelessWidget {
  final String text;
  final double height;
  final double fontSize;
  final VoidCallback onTap;
  final EdgeInsets padding;
  RoundFlatButton({
    this.text,
    this.height,
    this.fontSize = 14,
    this.padding = const EdgeInsets.all(8.0),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: FlatButton(
        height: height,
        onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.black),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}

/*
class ButtonList extends StatelessWidget {
  final buttonDict = {};
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: RoundFlatButton(
            text: 'Create',
            padding: EdgeInsets.only(left: 8, right: 4),
            onTap: () {},
          ),
        ),
        Expanded(
          flex: 1,
          child: RoundFlatButton(
            text: 'Random',
            padding: EdgeInsets.only(right: 8, left: 4),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
*/

class ModifiedLengthLimitingTextInputFormatter
    extends LengthLimitingTextInputFormatter {
  final int maxLength;

  ModifiedLengthLimitingTextInputFormatter(this.maxLength) : super(maxLength);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Return the new value when the old value has not reached the max
    // limit or the old value is composing too.
    if (newValue.composing.isValid) {
      if (maxLength != null &&
          maxLength > 0 &&
          oldValue.text.characters.length == maxLength &&
          !oldValue.composing.isValid) {
        return oldValue;
        //START OF FIX
      } else if (newValue.text.characters.length > maxLength) {
        return oldValue;
      }
      //END OF FIX
      return newValue;
    }
    if (maxLength != null &&
        maxLength > 0 &&
        newValue.text.characters.length > maxLength) {
      // If already at the maximum and tried to enter even more, keep the old
      // value.
      if (oldValue.text.characters.length == maxLength) {
        return oldValue;
      }
      return truncate(newValue, maxLength);
    }
    return newValue;
  }

  static TextEditingValue truncate(TextEditingValue value, int maxLength) {
    final CharacterRange iterator = CharacterRange(value.text);
    if (value.text.characters.length > maxLength) {
      iterator.expandNext(maxLength);
    }
    final String truncated = iterator.current;
    return TextEditingValue(
      text: truncated,
      selection: value.selection.copyWith(
        baseOffset: min(value.selection.start, truncated.length),
        extentOffset: min(value.selection.end, truncated.length),
      ),
      composing: TextRange.empty,
    );
  }
}

