// import 'package:flutter/material.dart';

// class Gender extends StatefulWidget {
//   @override
//   _GenderState createState() => _GenderState();
// }

// class _GenderState extends State<Gender> {
//   @override
//   Widget build(BuildContext context) {
//     int radioValue = 1;
//     String gender = "Male";

//     void handleRadioValueChanged(int value) {
//       setState(() {
//         radioValue = value;
//         if (radioValue == 0) {
//           gender = "Male";
//         } else if (radioValue == 1) {
//           gender = "Female";
//         } else if (radioValue == 1) {
//           gender = "other";
//         }
//         print(radioValue);
//       });
//     }

//     return Container(
//       padding: EdgeInsets.only(top: 20),
//       width: MediaQuery.of(context).size.width * 0.8,
//       child: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               Container(
//                 child: Text(
//                   "Gender",
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Radio<int>(
//                 value: 0,
//                 groupValue: radioValue,
//                 onChanged: handleRadioValueChanged,
//               ),
//               Text(
//                 "Male",
//               ),
//               Radio<int>(
//                 value: 1,
//                 groupValue: radioValue,
//                 onChanged: handleRadioValueChanged,
//               ),
//               Text(
//                 "Female",
//               ),
//               Radio<int>(
//                 value: 2,
//                 groupValue: radioValue,
//                 onChanged: handleRadioValueChanged,
//               ),
//               Text(
//                 "Other",
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
