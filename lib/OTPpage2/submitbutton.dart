import 'package:flutter/material.dart';
import '../registration/registrationpage.dart';

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
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
          MaterialPageRoute(
              builder: (BuildContext context) => RegistrationPage()),
        );
      },
      elevation: 30,
      child: Text(
        "Submit",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontFamily: "Poppins-Medium",
        ),
      ),
    );
  }
}
