import 'package:flutter/material.dart';
import '../registration/pagelayout.dart';

class SubmitButton extends StatefulWidget {
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
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
        onPressed: () {Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => RegPage()),
        );},
        
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
