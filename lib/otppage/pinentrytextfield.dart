import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class PinTextField extends StatefulWidget {
  @override
  _PinTextFieldState createState() => _PinTextFieldState();
}

class _PinTextFieldState extends State<PinTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.125,
                ),
                Text(
                  "Please Enter Your OTP",
                  style: TextStyle(
                    fontFamily: "Poppins-Regular",
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            PinEntryTextField(
              fields: 6,
              fieldWidth: MediaQuery.of(context).size.width * 0.1,
              onSubmit: () {},
              showFieldAsBox: true,
            ),
          ],
        )
      ],
    );
  }
}
