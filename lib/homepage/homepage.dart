import 'package:flutter/material.dart';
import 'package:washle/completeprofilepage/pagelayout.dart';
import 'package:washle/navbar/navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Washle",
          style: TextStyle(
            fontFamily: "Poppins-SemiBold",
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(
          0xff0875b5,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: NavBar(),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.8,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Color(0xff0875b5),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => CompleteProfilePage(),
                ),
              );
            },
            child: Text(
              "Complete Your Profile!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: "Poppins-Medium",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
