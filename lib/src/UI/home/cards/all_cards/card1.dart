import 'package:addhealth/src/UI/home/cards/detail/card1Page.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      child: Card(
        child: Container(
          height: MediaQuery.of(context).size.width * 0.25,
          width: MediaQuery.of(context).size.width * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                "assets/avatar.png",
                scale: 2,
              ),
              Text(
                "Nursing Care",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
      onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Card1Page(),
            ),
          ),
    );
  }
}
