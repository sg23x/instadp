import 'package:addhealth/src/UI/home/homepage.dart';
import 'package:addhealth/src/UI/walkthroughs/walkthrough_manager.dart';
import 'package:addhealth/src/function/saveFirstTime.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/UI/OTPpage1/otppage.dart';
import 'src/UI/registration/registrationpage.dart';

main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartPage(),
      // WalkThroughManager(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/dashBoard': (context) => HomePage(), //HomePage(),
        '/regPage': (context) => RegistrationPage(),
        '/loginPage': (context) => OTPPage1(),
      },
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var uid;
  DatabaseReference _database;
  var check;
  bool exist = false;
  bool firstTime;

  Future<void> verifyUser() async {
    await FirebaseAuth.instance.currentUser().then((user) async {
      if (user != null) {
        print("$user");
        print("user is getting checked");
        uid = user.uid;

        _database =
            FirebaseDatabase.instance.reference().child('customer');
        check = await _database.child(uid).once().then((DataSnapshot data) {
          print("000000 ${data.key}");
          print("0000001 ${data.value}");
          if (data.value != null) {
            exist = true;
            print("It is a registered user");
          }
        });
      }
    });
    SharedPreferences preferences = await SharedPreferences.getInstance();
    firstTime = preferences.getBool('firstTime');
    saveFirstTime();
    print("it is my first time is it $firstTime");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: FutureBuilder(
        future: verifyUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return WalkThroughManager();
            }
            return exist
                ? HomePage()
                : firstTime != null ? OTPPage1() : WalkThroughManager();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
