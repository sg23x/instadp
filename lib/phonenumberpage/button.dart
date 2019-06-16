import 'package:flutter/material.dart';
import 'package:washle/otppage/otppage.dart';

class OTPButton extends StatefulWidget {
  @override
  _OTPButtonState createState() => _OTPButtonState();
}

class _OTPButtonState extends State<OTPButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.6,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: Colors.white,
        onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => OTPPage()),
        );},
        
        child: Text(
          "Get OTP",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff0875b5),
            fontFamily: "Poppins-Medium",
          ),
        ),
      ),
    );
  }
}
