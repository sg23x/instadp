import 'package:flutter/material.dart';

class Button6 extends StatefulWidget {
  @override
  _Button6State createState() => _Button6State();
}

class _Button6State extends State<Button6> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(padding: EdgeInsets.only(left:20),
        height: 70,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/support_1.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Support",
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
