import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:addhealth/src/UI/OTPpage1/otppage.dart' as otp1;

import 'otppage.dart';

String phoneNo = otp1.areaCode + otp1.phoneNoController.text;
String smsCode;
String verificationId;

Future<void> verifyPhone(BuildContext context) async {
  phoneNo = otp1.areaCode + otp1.phoneNoController.text;
  print(phoneNo);
  final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
    verificationId = verId;
    print("auto000000000 retreive working");
  };

  final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
    verificationId = verId;
    OTPPage2();
    // smsCodeDialog(context).then((value) {
    //   print("Signed In");
    // });
  };

  final PhoneVerificationCompleted verifiedSuccess =
      (AuthCredential credential) {
    print('Verified');
  };

  final PhoneVerificationFailed veriFailed = (AuthException exception) {
    print(exception.message.toString());
  };

  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNo,
    codeAutoRetrievalTimeout: autoRetrieve,
    codeSent: smsCodeSent,
    timeout: const Duration(seconds: 5),
    verificationCompleted: verifiedSuccess,
    verificationFailed: veriFailed,
  );
}
