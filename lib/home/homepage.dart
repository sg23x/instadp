import 'package:flutter/material.dart';
import './searchbar.dart';
import './image.dart';
import './cards/card_rows/card_row1.dart';
import './cards/card_rows/card_row2.dart';
import './cards/card_rows/card_row3.dart';
import './banner.dart';
import './drawer/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0875b5),
        title: Row(
          children: <Widget>[
            Image(
              image: AssetImage(
                "assets/logowhite.png",
              ),
              height: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Add Health",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Poppins-SemiBold"),
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Image.asset("assets/shopping_cart.png", scale: 1.7),
          ),
        ],
      ),
      drawer: SideDrawer(),
      body: ListView(
        children: <Widget>[
          SeachBar(),
          SizedBox(
            height: 10,
          ),
          ImageRow(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 30,
              ),
              Text(
                "BOOK AN APPOINTMENT",
                style: TextStyle(
                  fontFamily: "Roboto-Bold",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row1(),
          SizedBox(
            height: 20,
          ),
          Row2(),
          SizedBox(
            height: 20,
          ),
          Row3(),
          SizedBox(
            height: 20,
          ),
          BannerImage(),
        ],
      ),
    );
  }
}
