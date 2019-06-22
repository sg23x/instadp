import 'package:flutter/material.dart';
import '../all_cards/card7.dart';
import '../all_cards/card8.dart';
import '../all_cards/card9.dart';

class Row3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Card7(),
        Card8(),
        Card9(),
      ],
    );
  }
}
