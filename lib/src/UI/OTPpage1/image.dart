import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/Group 809.png",
            scale: 1.5,
          ),
        ],
      ),
    );
  }
}
