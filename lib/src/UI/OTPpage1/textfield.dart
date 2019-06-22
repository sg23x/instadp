import 'package:addhealth/src/UI/OTPpage1/otppage.dart' as otp1;
import 'package:addhealth/src/function/validator.dart';
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
                child: Text("Mobile No."),
                padding: EdgeInsets.only(left: 65),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 45,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  enabled: false,
                  initialValue: "+91",
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Form(
                  key: otp1.formKey,
                  child: TextFormField(
                    controller: otp1.phoneNoController,
                    onSaved: (value) {
                      otp1.phoneNo = otp1.areaCode + value;
                    },
                    validator: (value) => validatePhone(
                          value,
                        ),
                    maxLength: 10,
                    decoration: InputDecoration(
                      counterText: "",
                    ),
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
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
