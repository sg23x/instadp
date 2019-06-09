import 'package:flutter/material.dart';
import './image.dart';
import './submitbutton.dart';
import './textfield.dart';

class OTPPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Enter ",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "RobotoCondensed-Regular",
                    ),
                  ),
                  Text(
                    "OTP ",
                    style: TextStyle(
                      fontFamily: "RobotoCondensed-Regular",
                      fontSize: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Text(
                    "sent to your",
                    style: TextStyle(
                      fontFamily: "RobotoCondensed-Regular",
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Text(
                "mobile number",
                style: TextStyle(
                  fontFamily: "RobotoCondensed-Regular",
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              LogoImage(),
              SizedBox(
                height: 20,
              ),
              SubmitOTPTextField(),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: SubmitButton(),
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
