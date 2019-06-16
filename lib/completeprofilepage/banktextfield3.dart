import 'package:flutter/material.dart';

class BankTextField3 extends StatefulWidget {
  @override
  _BankTextField3State createState() => _BankTextField3State();
}

class _BankTextField3State extends State<BankTextField3> {
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
                    labelText: "Confirm Account Number",
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