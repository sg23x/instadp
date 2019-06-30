import 'dart:convert';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:addhealth/src/function/errorHandling.dart';

import 'package:transparent_image/transparent_image.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController specialRequestController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  bool _isLoading = false;
  DatabaseReference _database;
  var uid;
  var check;
  var userData;

  @override
  void initState() {
    super.initState();
    verifyUser();
  }

  Future<void> verifyUser() async {
    await FirebaseAuth.instance.currentUser().then((user) async {
      if (user != null) {
        // print("$user");
        uid = user.uid;

        _database = FirebaseDatabase.instance.reference().child('customer');
        check = await _database.child(uid).once().then((DataSnapshot data) {
          userData = data.value;
          // print("000000 ${data.key}");
          // print("0000001 ${data.value}");
          setState(() {
            imageExists = userData["image"] != null;
            delete = !imageExists;
          });

          // if (data.value != null) exist = true;// check this condition

          addressController.text = data.value["rProfile"]["address"];
          specialRequestController.text = data.value["specialRequest"];
        });
      }
    });
  }

  Future<void> updateUser(String _imageUrl) async {
    await FirebaseAuth.instance.currentUser().then((user) async {
      if (user != null) {
        // print("$user");
        uid = user.uid;

        _database =
            FirebaseDatabase.instance.reference().child('customer').child(uid);
        Map<String, dynamic> rProfile = {
          // "address": addressController.text,
          "dob": userData["rProfile"]["dob"],
          "email": userData["rProfile"]["email"],
          "fullName": userData["rProfile"]["fullName"],
        };
        Map<String, dynamic> data = {
          // "specialRequest": specialRequestController.text,
          "rProfile": rProfile,
          "image": _imageUrl,
        };
        print("user Updating");
        _database.update(data);

        print("user Updated");
      }
    });
  }

  File _image;
  bool delete = true;
  bool imageExists = false;

  Future getImage(context) async {
    var image = await ImagePicker.pickImage(
      source: ImageSource.camera,
      maxHeight: 120,
      maxWidth: 60,
    );

    setState(() {
      _image = image;
      delete = false;
    });

    // _imageData = await uploadProfilePic(context, _image, widget.sId);
    Navigator.pop(context);
  }

  Future getImageGallery(context) async {
    var image = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 150,
      maxWidth: 120,
    );

    setState(() {
      _image = image;
      delete = false;
    });
    print("_image");
    print(_image.toString());
    // _imageData = await uploadProfilePic(context, _image, widget.sId);
    Navigator.pop(context);
  }

  deleteProfileImage(context) {
    setState(() {
      delete = true;
      imageExists = false;
    });
    Navigator.pop(context);
  }

  Future<String> uploadImage(File image) async {
    FirebaseStorage _storage = FirebaseStorage.instance;
    StorageReference reference = _storage.ref().child("Consumerimages/$uid/");
    StorageUploadTask uploadTask = reference.putFile(image);
    String downloadUrl =
        await (await uploadTask.onComplete).ref.getDownloadURL();
    print('img location $downloadUrl');
    return downloadUrl;
  }

  Future<void> deleteCheck() async {
    print("image Deleting");
    FirebaseStorage _storage = FirebaseStorage.instance;
    StorageReference reference =
        _storage.ref().child("Consumerimages/$uid/${userData["image"]}");
    var deleteTask = reference.delete().catchError((e) {
      print("Cannot Delete Image");
    });
    deleteTask.then((val) {
      print("deleted");
    });
    print("image Deleted");
  }

  void _showBottomSheet(context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.image),
                title: new Text('Gallery'),
                onTap: () => getImageGallery(context),
              ),
              new ListTile(
                leading: new Icon(Icons.camera),
                title: new Text('Camera'),
                onTap: () => getImage(context),
              ),
              delete
                  ? Container()
                  : new ListTile(
                      leading: new Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      title: new Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      onTap: () => deleteProfileImage(context),
                    ),
            ],
          );
        });
  }
  ////lkkllk
  ///lll

  @override
  Widget build(BuildContext context) {
    double cHeight = MediaQuery.of(context).size.height;
    double cWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: cHeight * 0.01,
              horizontal: cWidth * 0.04,
            ),
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 80,
                          child: _image == null
                              ? imageExists
                                  ? ClipOval(
                                      child: FadeInImage.memoryNetwork(
                                        placeholder: kTransparentImage,
                                        image: userData["image"],
                                        fit: BoxFit.cover,
                                        width: 190.0,
                                        height: 190.0,
                                      ),
                                    )
                                  : Icon(
                                      Icons.person,
                                      size: 130,
                                    )
                              : delete
                                  ? Container()
                                  : ClipOval(
                                      child: Image.file(
                                        _image,
                                        fit: BoxFit.cover,
                                        width: 190.0,
                                        height: 190.0,
                                      ),
                                    ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () => _showBottomSheet(context),
                            icon: Icon(
                              Icons.edit,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: cHeight * 0.02,
                    ),
                    child: TextFormField(
                      controller: addressController,
                      // onSaved: (val) => cProfile.item.aadharCard = val,
                      // validator: (value) => validateAadhar(
                      //       value,
                      //     ),
                      decoration: InputDecoration(
                        labelText: "Address",
                        // hintText: "Address",
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  TextFormField(
                    controller: specialRequestController,
                    decoration: InputDecoration(
                      labelText: "Enter Any Special/Admin Request",
                      // hintText: "Special Request for Admin",
                      fillColor: Colors.white,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              _isLoading
                  ? Container(
                      width: cWidth,
                      height: 45,
                      color: Color(0xff0875b5),
                      child: Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.white,
                        ),
                      ),
                    )
                  : Expanded(
                      child: PhysicalModel(
                        color: Color(0xff0875b5),
                        child: MaterialButton(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins-Medium",
                              fontSize: 18,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _isLoading = true;
                            });
                            if (_image != null) {
                              return uploadImage(_image).then((value) async {
                                await updateUser(value).then((val) {
                                  errorDialog(context, "Success",
                                      "Profile successfully updated");
                                  setState(() {
                                    _isLoading = false;
                                  });
                                }).catchError((e) {
                                  errorDialog(
                                      context, "Try Again", e.toString());
                                  setState(() {
                                    _isLoading = false;
                                  });
                                });
                                ;
                              }).catchError((e) {
                                errorDialog(context, "Try Again", e.toString());
                                setState(() {
                                  _isLoading = false;
                                });
                              });
                            } else {
                              if (delete) {
                                return deleteCheck().then((val) async {
                                  await updateUser(null).then((val) {
                                    errorDialog(context, "Success",
                                        "Profile successfully updated");
                                    setState(() {
                                      _isLoading = false;
                                    });
                                  }).catchError((e) {
                                    errorDialog(
                                        context, "Try Again", e.toString());
                                    setState(() {
                                      _isLoading = false;
                                    });
                                  });
                                  ;
                                });
                              } else {
                                return updateUser(userData["image"])
                                    .then((val) {
                                  errorDialog(context, "Success",
                                      "Profile successfully updated");
                                  setState(() {
                                    _isLoading = false;
                                  });
                                }).catchError((e) {
                                  errorDialog(
                                      context, "Try Again", e.toString());
                                  setState(() {
                                    _isLoading = false;
                                  });
                                });
                              }
                            }
                          },
                        ),
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
