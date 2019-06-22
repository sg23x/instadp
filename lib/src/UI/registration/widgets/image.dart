import 'package:flutter/material.dart';

class RegImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/Group 812.png",
            scale: 1.5,
          ),
        ],
      ),
    );
  }
}
