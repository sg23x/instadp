import 'package:flutter/material.dart';

class Button4 extends StatefulWidget {
  @override
  _Button4State createState() => _Button4State();
}

class _Button4State extends State<Button4> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(padding: EdgeInsets.only(left:20),
        height: 70,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/notification.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Notification",
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
