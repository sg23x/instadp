import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import './walkthrough1/walkthrough1.dart';
import './walkthrough2/walkthrough2.dart';
import './walkthrough3/walkthrough3.dart';
import './walkthrough4/walkthrough4.dart';

PageController _controller;

class WalkThroughManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageIndicatorContainer(
        pageView: PageView(
          children: <Widget>[
            WalkThrough1(),
            WalkThrough2(),
            WalkThrough3(),
            WalkThrough4(),
          ],
          controller: _controller,
        ),
        length: 4,
        indicatorSelectorColor: Color(0xFF0875b5),
        indicatorColor: Color(0xffd3d3d3),
        padding: EdgeInsets.only(bottom: height * 0.05),
      ),
    );
  }
}
