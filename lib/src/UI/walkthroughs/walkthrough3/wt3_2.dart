import 'package:flutter/material.dart';

class Wt32 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.5,
      child: Image(
        image: AssetImage("assets/Group 806.png"),
        fit: BoxFit.fitHeight,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
