import 'package:flutter/material.dart';
import './wt3_1.dart';
import './wt3_2.dart';

class WalkThrough3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wt31(),
        Wt32(),
      ],
    );
  }
}
