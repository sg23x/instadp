import 'package:flutter/material.dart';

errorDialog(
  BuildContext context,
  String title,
  String message,
) {
  return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            FlatButton(
              child: Text("ok"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}
