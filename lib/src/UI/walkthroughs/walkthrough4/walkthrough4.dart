import 'package:flutter/material.dart';
import './wt4_1.dart';
import './wt4_2.dart';

class WalkThrough4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wt41(),
        Wt42(),
      ],
    );
  }
}
