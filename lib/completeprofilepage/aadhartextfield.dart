import 'package:flutter/material.dart';

class AadharTextField extends StatefulWidget {
  @override
  _AadharTextFieldState createState() => _AadharTextFieldState();
}

class _AadharTextFieldState extends State<AadharTextField> {
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
                    labelText: "Aadhar Card",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
