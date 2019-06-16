import 'package:flutter/material.dart';
import 'package:washle/navbar/navbar.dart';

class UnderReviewPage extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/hourglass.png",
              scale: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "THANK YOU FOR REGISTERING",
              style: TextStyle(
                  fontFamily: "Roboto-Bold",
                  color: Color(
                    0xff0077b5,
                  ),
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your profile is under review and \n will notify you after approval.",
              style: TextStyle(
                  color: Color(
                    0xff0077b5,
                  ),
                  fontSize: 16),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Need Help ?",
              style: TextStyle(
                fontFamily: "Poppins-Regular",
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Mail us - support@washle.com",
              style: TextStyle(
                fontFamily: "Poppins-Regular",
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            Text(
              "Call us - 1800045684",
              style: TextStyle(
                fontFamily: "Poppins-Regular",
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
