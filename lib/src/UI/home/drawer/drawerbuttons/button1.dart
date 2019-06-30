import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(padding: EdgeInsets.only(left:20),margin: EdgeInsets.only(top: 20),
        height: 70,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/clock_1.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "My Booking",
              style: TextStyle(
                fontFamily: "RobotoCondensed-Regular",
                fontSize: 20,
                color: Color(
                  0xff454f63,
                ),
              ),
            ),
          ],
        ),
      ),
      onPressed: () {},
    );
  }
}
