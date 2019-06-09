import 'package:flutter/material.dart';
import '../all_cards/card4.dart';
import '../all_cards/card5.dart';
import '../all_cards/card6.dart';

class Row2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card4(),
        Card5(),
        Card6(),
      ],
    );
  }
}
