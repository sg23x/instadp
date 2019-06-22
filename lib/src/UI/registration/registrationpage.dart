import 'package:addhealth/src/UI/home/homepage.dart';
import 'package:addhealth/src/function/errorHandling.dart';
import 'package:addhealth/src/models/registerModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/image.dart';
import './widgets/textfield1.dart';
import './widgets/textfield2.dart';
import './widgets/registration_submit.dart';
import './widgets/dobfield.dart';
import './widgets/gender.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

List<RProfile> items = List();
RProfile item;
DatabaseReference _database;
String uid;
String radioValue = "Male";

final GlobalKey<FormState> fullNameFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> dobFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> genderFormKey = GlobalKey<FormState>();

void handleSubmit(BuildContext context) {
  item.gender = radioValue;
  var rProfile = item;

  var data;
  data = Users(
    uid: uid,
    rProfile: rProfile,
  );
  final FormState form1 = fullNameFormKey.currentState;
  final FormState form2 = emailFormKey.currentState;
  final FormState form3 = dobFormKey.currentState;

  if (form1.validate() && form2.validate() && form3.validate()) {
    form1.save();
    form2.save();
    form3.save();
    // print("cProfile $cProfile");
    // print("rProfile ${widget.rProfile}");

    print("uid $uid");
    _database.child(uid).set(data.toJson()).then((value) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => HomePage(),
        ),
        (Route<dynamic> route) => false,
      );
    }).catchError((e) {
      return errorDialog(
        context,
        "Error",
        "Invalid data",
      );
    });
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
  void handleRadioValueChanged(String value) {
    setState(() {
      radioValue = value;
      item.gender = radioValue;
      print(radioValue);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var _selectedDate = DateTime.now();
    dobController.text = "${DateFormat.d().format(_selectedDate)}" +
        " ${DateFormat.yMMM().format(_selectedDate)}";
    //  DateFormat.jm().format(_selectedDate);

    FirebaseAuth.instance.currentUser().then((user) {
      print("user $user");
      print("uid ${user.uid}");
      uid = user.uid;
    });

    item = RProfile();
    _database = FirebaseDatabase.instance.reference().child('customer');
    // _database.set(45);
  }

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
              RegImage(),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Register to ",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "RobotoCondensed-Regular",
                    ),
                  ),
                  Text(
                    "Add Health",
                    style: TextStyle(
                      fontFamily: "RobotoCondensed-Regular",
                      fontSize: 30,
                      color: Color(0xff0875b5),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Please enter your details",
                style: TextStyle(
                  fontFamily: "RobotoCondensed-Regular",
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField1(),
              TextField2(),
              DOBTextField(),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Gender",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio<String>(
                          value: "Male",
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged,
                        ),
                        Text(
                          "Male",
                        ),
                        Radio<String>(
                          value: "Female",
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged,
                        ),
                        Text(
                          "Female",
                        ),
                        Radio<String>(
                          value: "Other",
                          groupValue: radioValue,
                          onChanged: handleRadioValueChanged,
                        ),
                        Text(
                          "Other",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: RegistrationButton(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "By continuing you agree to the ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        child: Text(
                          "End User Agreement",
                          style: TextStyle(
                            color: Color(0xff0875b5),
                            fontSize: 12,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "and ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff0875b5),
                          ),
                        ),
                      ),
                      Text(
                        " of ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "Add Health",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
