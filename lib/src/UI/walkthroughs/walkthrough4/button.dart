import 'package:flutter/material.dart';
import '../../OTPpage1/otppage.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RaisedButton(
        elevation: 10,
        color: Color(0xff0875b5),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (BuildContext context) => OTPPage1()),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "GET STARTED",
              style: TextStyle(color: Colors.white),
            ),
            Image.asset(
              "assets/left_arrow.png",
              width: 40,
              height: 20,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      width: 230,
      height: 50,
    );
  }
}
