import 'package:flutter/material.dart';
import 'package:washle/thankyou/underreviewpage.dart';

class ProfileSubmitButton extends StatefulWidget {
  @override
  _ProfileSubmitButtonState createState() => _ProfileSubmitButtonState();
}

class _ProfileSubmitButtonState extends State<ProfileSubmitButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.6,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: Colors.white,
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => UnderReviewPage(),
            ),
          );
        },
        child: Text(
          "Submit",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff0875b5),
            fontFamily: "Poppins-Medium",
          ),
        ),
      ),
    );
  }
}
