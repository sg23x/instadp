import 'package:flutter/material.dart';
import 'package:washle/phonenumberpage/button.dart';
import 'package:washle/phonenumberpage/textfield.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 2 / 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(
                        children: <Widget>[
                          
                          Image.asset(
                            "assets/washle_1.png",
                            fit: BoxFit.fill,
                          ),
                          Text(
                            "N E T W O R K  P A R T N E R",
                            style: TextStyle(
                                fontFamily: "GlacialIndifference-Bold",
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 4/15,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    OTPTextField(),
                  ],
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1 / 3,
            color: Color(0xff0875b5),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    OTPButton(),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
