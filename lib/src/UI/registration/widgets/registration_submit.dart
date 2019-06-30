import 'package:addhealth/src/UI/registration/registrationpage.dart';
import 'package:flutter/material.dart';
import '../../home/homepage.dart';

class RegistrationButton extends StatefulWidget {
  @override
  _RegistrationButtonState createState() => _RegistrationButtonState();
}

class _RegistrationButtonState extends State<RegistrationButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      color: Color(0xff0875b5),
      onPressed: () => handleSubmit(context),
      // () {
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (BuildContext context) => HomePage(),
      //     ),
      //   );
      // },
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
