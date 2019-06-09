import 'package:addhealth/walkthroughs/walkthrough_manager.dart';
import 'package:flutter/material.dart';

main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalkThroughManager(),
      debugShowCheckedModeBanner: false,
    );
  }
}
