import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import './image.dart';
import './textfield.dart';
import './otpbutton.dart';

class OTPPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                "Let's get started",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "RobotoCondensed-Regular",
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Enter Your",
                    style: TextStyle(
                      fontFamily: "RobotoCondensed-Regular",
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    " Mobile Number",
                    style: TextStyle(
                      fontFamily: "RobotoCondensed-Regular",
                      fontSize: 30,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TopImage(),
              SizedBox(
                height: 20,
              ),
              OTPTextField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: OTPButton(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "By continuing you agree to the ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Text(
                          "End User Agreement",
                          style: TextStyle(
                            color: Color(0xff0875b5),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "and ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Color(0xff0875b5),
                          ),
                        ),
                        padding: EdgeInsets.all(0),
                      ),
                      Text(
                        " of Add Health",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
