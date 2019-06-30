// To parse this JSON data, do
//
//     final users = usersfromSnapshot(jsonString);

import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';

Users usersFromJson(String str) => Users.fromSnapshot(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  String uid;
  RProfile rProfile;

  Users({
    this.uid,
    this.rProfile,
  });

  Users.fromSnapshot(DataSnapshot snapshot)
      : uid = snapshot.value["uid"],
        rProfile = snapshot.value["rProfile"];

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "rProfile": rProfile.toJson(),
      };
}

class RProfile {
  String fullName;
  String email;
  String dob;
  String address;
  String gender;

  RProfile({
    this.fullName,
    this.email,
    this.dob,
    this.address,
    this.gender,
  });

  RProfile.fromSnapshot(DataSnapshot snapshot)
      : fullName = snapshot.value["fullName"],
        email = snapshot.value["email"],
        dob = snapshot.value["dob"],
        address = snapshot.value["address"],
        gender = snapshot.value["gender"];

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "email": email,
        "dob": dob,
        "address": address,
        "gender": gender,
      };
}
