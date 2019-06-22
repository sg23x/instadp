import 'package:flutter/material.dart';

class Button2 extends StatefulWidget {
  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(padding: EdgeInsets.only(left:20),
        height: 70,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/shopping_cart1.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "My Cart",
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
