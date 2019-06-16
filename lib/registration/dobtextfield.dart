import 'package:flutter/material.dart';

class DOBTextField extends StatefulWidget {
  @override
  _DOBTextFieldState createState() => _DOBTextFieldState();
}

class _DOBTextFieldState extends State<DOBTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: TextFormField(
                  onEditingComplete: () {},
                  decoration: new InputDecoration(
                    labelText: "Date of Birth",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
