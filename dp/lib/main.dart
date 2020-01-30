import 'package:flutter/material.dart';
import 'api.dart';
import 'dart:convert';

main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaff(),
    );
  }
}

class Scaff extends StatefulWidget {
  @override
  _ScaffState createState() => _ScaffState();
}

class _ScaffState extends State<Scaff> {
  @override
  String url = "";
  String data;
  String imageurl = "";
  String username = "";
  double sizedheight;
  MainAxisAlignment axis = MainAxisAlignment.center;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Text(
        "Creator: @sgiix",
        style: TextStyle(),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (_) {
          FocusScope.of(context).requestFocus(
            FocusNode(),
          );
        },
        child: Column(
          mainAxisAlignment: axis,
          children: <Widget>[
            SizedBox(
              height: sizedheight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onChanged: (val) {
                      url = "http://sg23x.pythonanywhere.com/api?Query=" + val;
                      username = val;
                    },
                  ),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.white70,
              child: Text(
                "Go!",
              ),
              onPressed: () async {
                data = await getData(url);
                var decoded = jsonDecode(data);
                setState(
                  () {
                    imageurl = decoded['Query'];
                    axis = MainAxisAlignment.start;
                    sizedheight = MediaQuery.of(context).size.height * 0.1;
                  },
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            url != ""
                ? Container(
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: Image.network(
                      imageurl,
                      scale: 0.82,
                    ),
                  )
                : SizedBox(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            username != ""
                ? Text(
                    "@" + username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

