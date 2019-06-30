import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    double cHeight = MediaQuery.of(context).size.height;
    double cWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xff0875b5),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Expanded(
          //   flex: 3,
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //       left: cWidth * 0.03,
          //       right: cWidth * 0.02,
          //     ),
          //     child: Row(
          //       children: <Widget>[
          //         Flexible(
          //           child: TextField(
          //             decoration: InputDecoration(
          //               alignLabelWithHint: false,
          //               prefixIcon: Image.asset(
          //                 "assets/magnifying_glass.png",
          //                 scale: 1.5,
          //               ),
          //               fillColor: Colors.white,
          //               filled: true,
          //               hintText: "Search Services",
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                left: cWidth * 0.02,
                right: cWidth * 0.02,
              ),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        alignLabelWithHint: false,
                        suffixIcon: Image.asset(
                          "assets/location.jpg",
                          scale: 40,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Your current location?",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
