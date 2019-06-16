import 'package:flutter/material.dart';

class TnCCheckBox extends StatefulWidget {
  @override
  _TnCCheckBoxState createState() => _TnCCheckBoxState();
}

class _TnCCheckBoxState extends State<TnCCheckBox> {
  bool val = false;
  Widget build(BuildContext context) {
    return Checkbox(
      value: val,
      activeColor: Colors.white,
      checkColor: Color(
        0xff0077b5,
      ),
      onChanged: (value) {
        setState(
          () {
            val = value;
          },
        );
      },
    );
  }
}
