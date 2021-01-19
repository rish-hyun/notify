import 'package:flutter/material.dart';
import 'package:notify/resource/custom_widget.dart';

class CreateNoticeBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 30),
            child: TextField(
              decoration: InputDecoration(
                //helperText: widget.label,
                labelText: 'Create Board Name',
                //hintText: widget.label,
                //suffixText: 'Suf TExt',
              ),
            ),
          ),
          RoundFlatButton(
            text: 'Create',
            height: 50,
            fontSize: 17,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
