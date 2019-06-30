import 'package:flutter/material.dart';

class Button7 extends StatefulWidget {
  @override
  _Button7State createState() => _Button7State();
}

class _Button7State extends State<Button7> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(padding: EdgeInsets.only(left:20),
        height: 70,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/star.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Rate Us",
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
