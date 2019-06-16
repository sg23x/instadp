import 'package:flutter/material.dart';
import 'package:washle/otppage/button.dart';
import 'package:washle/otppage/pinentrytextfield.dart';

class OTPPage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Enter Your OTP",
                      style: TextStyle(
                        fontFamily: "Poppins-Bold",
                        fontSize: 30,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please enter your OTP code sent \n to you",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins-Regular",
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                PinTextField(),
                SizedBox(
                  height: 40,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            color: Color(0xff0077b5),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SubmitButton(),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Did you not get your OTP?",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins-Regular",
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins-Regular",
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins-Regular",
                        fontSize: 17,
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      child: Text(
                        "Change",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins-Regular",
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
