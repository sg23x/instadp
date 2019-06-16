import 'package:flutter/material.dart';
import 'package:washle/registration/TnCtext.dart';
import 'package:washle/registration/addresstextfield.dart';
import 'package:washle/registration/checkbox.dart';
import 'package:washle/registration/dobtextfield.dart';
import 'package:washle/registration/emailtextfield.dart';
import 'package:washle/registration/nametextfield.dart';
import 'package:washle/registration/submitbutton.dart';

class RegPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,appBar: AppBar(
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
            height: MediaQuery.of(context).size.height * 0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  "assets/transportation.png",
                  scale: 1.7,
                ),
                Text(
                  "Register to Washle",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Poppins-Bold",
                  ),
                ),
                NameTextField(),
                EmailTextField(),
                DOBTextField(),
                AddressTextField(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.218,
            color: Color(
              0xff0077b5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TnCCheckBox(),
                    TnCtext(),
                  ],
                ),
                RegSubmitButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
