import 'package:flutter/material.dart';

class Button3 extends StatefulWidget {
  @override
  _Button3State createState() => _Button3State();
}

class _Button3State extends State<Button3> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(padding: EdgeInsets.only(left:20),
        height: 70,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/discount.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Coupons",
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
