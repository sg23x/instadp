import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Color(0xff127aaf),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/Group 712.png",
                      scale: 4,
                    ),
                    onTap: () {},
                    title: Text(
                      "New Order",
                      style: TextStyle(fontFamily: "SegoeUI", fontSize: 20),
                    ),
                  ),
                  selectedColor: Color(
                    0xff127aaf,
                  ),
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/Group 714.png",
                      scale: 4,
                    ),
                    onTap: () {},
                    title: Text(
                      "Order History",
                      style: TextStyle(fontFamily: "SegoeUI", fontSize: 20),
                    ),
                  ),
                  selectedColor: Color(
                    0xff127aaf,
                  ),
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Text(
                      "ACCOUNT",
                      style: TextStyle(
                          color: Color(
                            0xff20313a,
                          ),
                          fontSize: 10),
                    ),
                  ],
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/Path 672.png",
                      scale: 4,
                    ),
                    onTap: () {},
                    title: Text(
                      "Total Money",
                      style: TextStyle(fontFamily: "SegoeUI", fontSize: 20),
                    ),
                  ),
                  selectedColor: Color(
                    0xff127aaf,
                  ),
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/Path 673.png",
                      scale: 4,
                    ),
                    onTap: () {},
                    title: Text(
                      "My Profile",
                      style: TextStyle(fontFamily: "SegoeUI", fontSize: 20),
                    ),
                  ),
                  selectedColor: Color(
                    0xff127aaf,
                  ),
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/Group 716.png",
                      scale: 4,
                    ),
                    onTap: () {},
                    title: Text(
                      "Contact Us",
                      style: TextStyle(fontFamily: "SegoeUI", fontSize: 20),
                    ),
                  ),
                  selectedColor: Color(
                    0xff127aaf,
                  ),
                ),
                ListTileTheme(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/logout.png",
                      scale: 4,
                    ),
                    onTap: () {},
                    title: Text(
                      "Log Out",
                      style: TextStyle(fontFamily: "SegoeUI", fontSize: 20),
                    ),
                  ),
                  selectedColor: Color(
                    0xff127aaf,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
