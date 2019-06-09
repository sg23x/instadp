import 'package:flutter/material.dart';

class DOBTextField extends StatefulWidget {
  @override
  _DOBTextFieldState createState() => _DOBTextFieldState();
}

class _DOBTextFieldState extends State<DOBTextField> {
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
                  "Date of Birth",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
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
