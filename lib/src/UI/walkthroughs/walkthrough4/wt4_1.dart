import "package:flutter/material.dart";
import '../walkthrough4/button.dart';

class Wt41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.45,
      width: width,
      padding: EdgeInsets.only(top: height * 0.15),
      child: Column(
        children: <Widget>[
          Text(
            "Nursing Care Services",
            style: TextStyle(
              fontFamily: "Roboto-Bold",
              fontSize: 33,
              color: Color(0xffff748e),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "at never seen before prices",
            style: TextStyle(
                fontFamily: "RobotoCondensed-Regular",
                color: Colors.black,
                fontSize: 21),
          ),
          SizedBox(
            height: height * 0.085,
          ),
          GetStartedButton(),
        ],
      ),
    );
  }
}
