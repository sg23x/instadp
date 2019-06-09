import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/Group 811.png",
            scale: 1.5,
          ),
        ],
      ),
    );
  }
}
