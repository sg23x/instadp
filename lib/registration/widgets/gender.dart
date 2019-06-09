import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.87,
      child: Row(
        children: <Widget>[
          Radio(),
          Text(
            "Male",
          ),
          Radio(),
          Text(
            "Female",
          ),
          Radio(),
          Text(
            "Other",
          ),
        ],
      ),
    );
  }
}
