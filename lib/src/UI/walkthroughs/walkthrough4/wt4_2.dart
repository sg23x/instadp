import 'package:flutter/material.dart';

class Wt42 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Container(
          height: height * 0.4,
          child: Image(
            image: AssetImage("assets/Group 808.png"),
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
