import 'package:flutter/material.dart';
import './wt2_1.dart';
import './wt2_2.dart';

class WalkThrough2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wt21(),
        Wt22(),
      ],
    );
  }
}
