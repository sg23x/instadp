import 'package:flutter/material.dart';

class BankTextField1 extends StatefulWidget {
  @override
  _BankTextField1State createState() => _BankTextField1State();
}

class _BankTextField1State extends State<BankTextField1> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 15),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextFormField(
                      onEditingComplete: () {},
                      decoration: new InputDecoration(
                        labelText: "Account Holder Name",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.03,
        ),
        Container(
          padding: EdgeInsets.only(top: 15),
          width: MediaQuery.of(context).size.width * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: TextFormField(
                      onEditingComplete: () {},
                      decoration: new InputDecoration(
                        labelText: "IFSC",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
