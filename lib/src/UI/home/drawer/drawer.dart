import 'package:addhealth/src/UI/editProfile/editProfilePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:transparent_image/transparent_image.dart';

import './drawerbuttons/button1.dart';
import './drawerbuttons/button2.dart';
import './drawerbuttons/button3.dart';
import './drawerbuttons/button4.dart';
import './drawerbuttons/button5.dart';
import './drawerbuttons/button6.dart';
import './drawerbuttons/button7.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  DatabaseReference _database;

  var uid;

  var check;

  var userData;

  bool imageExists = false;

  String fName = "";

  String email = "";

  @override
  void initState() {
    super.initState();
    verifyUser();
  }

  Future<void> verifyUser() async {
    await FirebaseAuth.instance.currentUser().then((user) async {
      if (user != null) {
        print("$user");
        uid = user.uid;

        _database = FirebaseDatabase.instance.reference().child('customer');
        check = await _database.child(uid).once().then((DataSnapshot data) {
          userData = data.value;
          print("000000 ${data.key}");
          print("0000001 ${data.value}");
          setState(() {
            imageExists = userData["image"] != null;
            fName = data.value["rProfile"]["fullName"];
            email = data.value["rProfile"]["email"];
            print("image exists $imageExists");
          });

          // if (data.value != null) exist = true;// check this condition
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double cHeight = MediaQuery.of(context).size.height;
    double cWidth = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: Color(0xff127aaf),
            height: cHeight * 0.3,
            child: Padding(
              padding: EdgeInsets.only(
                left: cWidth * 0.03,
                right: cWidth * 0.01,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  imageExists
                      ? ClipOval(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: userData["image"],
                            fit: BoxFit.cover,
                            width: 110.0,
                            height: 110.0,
                          ),
                        )
                      : CircleAvatar(
                          radius: 55,
                          child: Icon(
                            Icons.person,
                            size: cHeight * 0.04,
                          ),
                          backgroundColor: Colors.blueGrey,
                        ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        fName ?? "",
                        style: TextStyle(
                          fontFamily: "SegoeUI",
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            email ?? "",
                            style: TextStyle(
                              fontFamily: "SegoeUI",
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                print("teaap");
                                Navigator.pop(context);
                                return Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ProfilePage(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 15,
                                ),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Button1(),
          Button2(),
          Button3(),
          Button4(),
          Button5(),
          Button6(),
          Button7(),
          Divider(),
          Row(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Text(
                  "About Us            ",
                ),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Text(
                  "Terms and Conditions            ",
                ),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Text(
                  "Disclaimer           ",
                ),
                onPressed: () {},
              ),
            ],
          ),
          FlatButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then((action) {
                Navigator.of(context).pushReplacementNamed('/loginPage');
              }).catchError((e) {
                print(e);
              });
            },
            child: Text(
              "Logout",
              style: TextStyle(
                color: Color(
                  0xff0875b5,
                ),
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  "App Version: 1.0",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
