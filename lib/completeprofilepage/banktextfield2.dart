import 'package:flutter/material.dart';

class BankTextField2 extends StatefulWidget {
  @override
  _BankTextField2State createState() => _BankTextField2State();
}

class _BankTextField2State extends State<BankTextField2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: TextFormField(
                  onEditingComplete: () {},
                  decoration: new InputDecoration(
                    labelText: "Account Number",
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}