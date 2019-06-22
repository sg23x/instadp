import 'package:addhealth/src/function/errorHandling.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../registration/registrationpage.dart';
import 'package:firebase_database/firebase_database.dart';
import '../OTPpage2/otpVerify.dart' as otp2;

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  bool _isLoading = false;

  submitPressed() {
    DatabaseReference _database;
    var uid;
    FirebaseAuth.instance.currentUser().then(
      (user) {
        print("userOtpbutton $user");

        final AuthCredential credential = PhoneAuthProvider.getCredential(
          verificationId: otp2.verificationId,
          smsCode: otp2.smsCode,
        );

        FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((user) async {
          var path = "/regPage";
          if (user != null) {
            print("$user");
            uid = user.uid;

            _database = FirebaseDatabase.instance.reference().child('customer');
            await _database.child(uid).once().then((DataSnapshot data) {
              print("000000 ${data.key}");
              print("0000001 ${data.value}");
              if (data.value != null) {
                path = "/dashBoard";
              }
            });
          }
          otp2.smsCode = "";
          Navigator.of(context).pushNamedAndRemoveUntil(
            path,
            (Route<dynamic> route) => false,
          );
        }).catchError((e) {
          setState(() {
            _isLoading = false;
          });
          print(e);
          return errorDialog(
            context,
            "Error",
            "OTP not valid",
          );
        });
        // print("signInNow");
        // }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            color: Color(0xff0875b5),
            onPressed: () {
              print("submit button pressed");
              setState(() {
                _isLoading = true;
              });
              print(_isLoading);
              return submitPressed();
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //       builder: (BuildContext context) => RegistrationPage()),
              // );
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
