import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './drawerbuttons/button1.dart';
import './drawerbuttons/button2.dart';
import './drawerbuttons/button3.dart';
import './drawerbuttons/button4.dart';
import './drawerbuttons/button5.dart';
import './drawerbuttons/button6.dart';
import './drawerbuttons/button7.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Color(0xff0875b5),
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
            onPressed: () {},
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
