import 'package:flutter/material.dart';

class TnCtext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              "By continuing you agree to the ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              child: Text(
                "End User Agreement",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              "and ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              " of ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Text(
              "Washle",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
