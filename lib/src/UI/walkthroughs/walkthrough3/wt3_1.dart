import "package:flutter/material.dart";
import '../../OTPpage1/otppage.dart';

class Wt31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: height * 0.075, right: 15),
          height: height * 0.045,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                textColor: Color(0xff0875b5),
                child: Text(
                  "SKIP",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => OTPPage1()),
                  );
                },
              )
            ],
          ),
        ),
        Container(
          height: height * 0.25,
          width: width,
          padding: EdgeInsets.only(top: height * 0.03),
          child: Column(
            children: <Widget>[
              Text(
                "Laboratory Test",
                style: TextStyle(
                  fontFamily: "Roboto-Bold",
                  fontSize: 33,
                  color: Color(0xffff748e),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Fast and Low Cost",
                style: TextStyle(
                    fontFamily: "RobotoCondensed-Regular",
                    color: Colors.black,
                    fontSize: 21),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
