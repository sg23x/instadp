import 'package:flutter/material.dart';

class OTPTextField extends StatefulWidget {
  @override
  _OTPTextFieldState createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
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
                width: 65,
                child: TextFormField(
                  enabled: false,
                  initialValue: "+91",
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                      borderSide: new BorderSide(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Mobile No.",counterText: "",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.numberWithOptions(),maxLength: 10,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
