import 'package:flutter/material.dart';
import '../all_cards/card1.dart';
import '../all_cards/card2.dart';
import '../all_cards/card3.dart';

class Row1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card1(),
        Card2(),
        Card3(),
      ],
    );
  }
}
