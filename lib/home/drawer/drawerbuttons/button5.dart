import 'package:flutter/material.dart';

class Button5 extends StatefulWidget {
  @override
  _Button5State createState() => _Button5State();
}

class _Button5State extends State<Button5> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Container(padding: EdgeInsets.only(left:20),
        height: 70,
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/placeholder.png",
              scale: 1.5,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "My Address",
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
