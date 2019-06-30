import 'package:addhealth/src/UI/OTPpage2/otpVerify.dart';
import 'package:flutter/material.dart';
import '../OTPpage2/otppage.dart';
import 'package:addhealth/src/UI/OTPpage1/otppage.dart' as otp1;

class OTPButton extends StatefulWidget {
  @override
  _OTPButtonState createState() => _OTPButtonState();
}

class _OTPButtonState extends State<OTPButton> {
  validAndSubmit() {
    var form = otp1.formKey.currentState;
    print("form ${form}");
    if (form.validate()) {
      form.save();

      verifyPhone(context);
      // print("phonenumber 3: $phoneNo");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => OTPPage2(),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      color: Color(0xff0875b5),
      onPressed: () {
        return validAndSubmit();
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (BuildContext context) => OTPPage2()),
        // );
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
