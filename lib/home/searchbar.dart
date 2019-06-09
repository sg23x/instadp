import 'package:flutter/material.dart';

class SeachBar extends StatefulWidget {
  @override
  _SeachBarState createState() => _SeachBarState();
}

class _SeachBarState extends State<SeachBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff0875b5),
      height: 70,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                alignLabelWithHint: false,
                prefixIcon: Image.asset(
                  "assets/magnifying_glass.png",
                  scale: 1.5,
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: "Search Services",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
