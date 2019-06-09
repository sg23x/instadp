import 'package:flutter/material.dart';

class SubmitOTPTextField extends StatefulWidget {
  @override
  _SubmitOTPTextFieldState createState() => _SubmitOTPTextFieldState();
}


class _SubmitOTPTextFieldState extends State<SubmitOTPTextField> {
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
                  "Please Enter Your OTP",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: TextFormField(
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
