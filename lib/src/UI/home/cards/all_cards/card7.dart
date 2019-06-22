import 'package:flutter/material.dart';

class Card7 extends StatelessWidget {
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
                "assets/doctor_stethoscope.png",
                scale: 2,
              ),
              Text(
                "Medical Equipments",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
