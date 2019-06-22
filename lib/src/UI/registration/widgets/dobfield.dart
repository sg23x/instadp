import 'package:flutter/material.dart';
import '../registrationpage.dart' as reg;

import 'package:intl/intl.dart';

class DOBTextField extends StatefulWidget {
  @override
  _DOBTextFieldState createState() => _DOBTextFieldState();
}

TextEditingController dobController = TextEditingController();

class _DOBTextFieldState extends State<DOBTextField> {
  DateTime _selectedDate = DateTime.now();
  String displayDate;

  Future<void> selectDataFromPicker() async {
    DateTime currentDate = DateTime.now();

    DateTime firstDate = DateTime(1900);

    DateTime selected = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: firstDate,
      lastDate: currentDate,
    );
    if (selected != null) {
      _selectedDate = selected;
    }
    displayDate = "${DateFormat.d().format(_selectedDate)}" +
        " ${DateFormat.yMMM().format(_selectedDate)}";
    //  DateFormat.jm().format(_selectedDate);
    dobController.text = displayDate;
    print("date6777773 $displayDate");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text(
                  "Date of Birth",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Stack(
                  children: <Widget>[
                    Form(
                      key: reg.dobFormKey,
                      // child: ,
                      child: TextFormField(
                        enabled: false,
                        controller: dobController,
                        onSaved: (val) => reg.item.dob = val,
                        validator: (val) =>
                            val == "" ? "Choose a valid date" : null,
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: selectDataFromPicker,
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
