import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Image.asset(
        "assets/Group 814.png",
      ),
    );
  }
}
