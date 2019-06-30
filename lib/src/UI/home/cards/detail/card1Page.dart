import 'package:flutter/material.dart';
import 'package:addhealth/src/UI/home/homepage.dart' as home;
import 'package:cloud_firestore/cloud_firestore.dart';

class Card1Page extends StatefulWidget {
  @override
  _Card1PageState createState() => _Card1PageState();
}

List<bool> addCart = List.filled(100, true, growable: true);
int itemCounter = 0;

class _Card1PageState extends State<Card1Page> {
  @override
  Widget build(BuildContext context) {
  double cWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Color(0xff0875b5),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            // color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            alignLabelWithHint: false,
            prefixIcon: Image.asset(
              "assets/magnifying_glass.png",
              scale: 1.5,
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: "Search Services",
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Stack(
              children: <Widget>[
                Image.asset("assets/shopping_cart.png", scale: 1.7),
                new Positioned(
                  right: 0,
                  child: new Container(
                    padding: EdgeInsets.all(1),
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: new Text(
                      home.counter?.toString() ?? "",
                      style: new TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFfbfbfb),
          // color: Colors.grey[300],
          // gradient: LinearGradient(
          //   begin: Alignment(-1.0, 0),
          //   end: Alignment(-0.3, 0),
          //   colors: [
          //     Colors.grey,
          //     Colors.white,
          //   ],
          // ),
        ),
        child: StreamBuilder(
            stream: Firestore.instance.collection('allServices').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Container(
                  child: Center(
                    child: Text("Loading..."),
                  ),
                );
              print("total length: " +
                  snapshot.data.documents[0].documentID.length.toString());
              print("total length: " +
                  snapshot.data.documents[0].documentID.toString());
              return ListView.builder(
                itemExtent: 135,
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) => _buildListItem(
                      context,
                      index,
                      snapshot.data.documents[index],
                    ),
              );
            }),
      ),
    );
  }

  Widget _buildListItem(
    BuildContext context,
    int index,
    DocumentSnapshot document,
  ) {
    double cHeight = MediaQuery.of(context).size.height;
    double cWidth = MediaQuery.of(context).size.width;

    String name = document.documentID;
    String price = document["price"];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: cWidth * 0.02,
        vertical: cHeight * 0.01,
      ),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/avatar.png",
                  color: Colors.cyan,
                  scale: 1.2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                      ),
                      child: Container(
                        // color: Colors.green,
                        width: cWidth * 0.45,
                        child: Text(
                          name ?? "Naveen",
                          maxLines: 3,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            color: Color(0xff0875b5),
                            fontFamily: "Poppins-Medium",
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Your price: ",
                        ),
                        Text(
                          "₹$price",
                          style: TextStyle(
                            fontFamily: "Roboto-Bold",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                right: cWidth * 0.03,
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: addCart[index]
                    ? RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Color(0xff0875b5),
                        onPressed: itemCounter >= 2
                            ? null
                            : () {
                                // print("AddCart button pressed");
                                addCart[index] = false;
                                setState(() {
                                  home.counter++;
                                  itemCounter++;
                                });
                              },
                        elevation: 0,
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            // fontSize: 18,
                            color: Colors.white,
                            fontFamily: "Poppins-Medium",
                          ),
                        ),
                      )
                    : RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.red, //Color(0xff0875b5),
                        onPressed: () {
                          addCart[index] = true;
                          setState(() {
                            home.counter--;
                            itemCounter--;
                          });
                        },
                        elevation: 0,
                        child: Text(
                          "Remove",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: "Poppins-Medium",
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
