import 'package:flutter/material.dart';

class TextField1 extends StatefulWidget {
  @override
  _TextField1State createState() => _TextField1State();
}

class _TextField1State extends State<TextField1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text(
                  "Full Name",
                  style: TextStyle(color: Colors.grey,fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: TextFormField(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
