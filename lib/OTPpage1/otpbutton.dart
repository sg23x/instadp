import 'package:flutter/material.dart';
import '../OTPpage2/otppage.dart';

class OTPButton extends StatefulWidget {
  @override
  _OTPButtonState createState() => _OTPButtonState();
}

class _OTPButtonState extends State<OTPButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      color: Color(0xff0875b5),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) => OTPPage2()),
        );
      },
      elevation: 30,
      child: Text(
        "Get OTP",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: "Poppins-Medium",
        ),
      ),
    );
  }
}
