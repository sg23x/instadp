import 'package:flutter/material.dart';
import 'package:washle/completeprofilepage/aadhartextfield.dart';
import 'package:washle/completeprofilepage/banktextfield1.dart';
import 'package:washle/completeprofilepage/banktextfield2.dart';
import 'package:washle/completeprofilepage/banktextfield3.dart';
import 'package:washle/completeprofilepage/profilebutton.dart';

class CompleteProfilePage extends StatelessWidget {
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
            height: MediaQuery.of(context).size.height * 3.6 / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/clipboard.png",
                  scale: 1.4,
                ),
                Text(
                  "Complete Profile",
                  style: TextStyle(fontFamily: "Poppins-Bold", fontSize: 25),
                ),
                AadharTextField(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Bank Account Details",
                  style: TextStyle(
                    fontFamily: "Poppins-Regular",
                  ),
                ),
                BankTextField1(),
                BankTextField2(),
                BankTextField3(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.148,
            color: Color(
              0xff0875b5,
            ),
            child: Center(
              child: ProfileSubmitButton(),
            ),
          )
        ],
      ),
    );
  }
}
