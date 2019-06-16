import 'package:flutter/material.dart';

class AddressTextField extends StatefulWidget {
  @override
  _AddressTextFieldState createState() => _AddressTextFieldState();
}

class _AddressTextFieldState extends State<AddressTextField> {
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
                    labelText: "Full Address",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
