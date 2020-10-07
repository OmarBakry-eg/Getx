import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //don't need 'Get' before Material App if you're only using State Management
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: Colors.purpleAccent,
        primaryColor: Colors.purple,
      ),
      home: ScreenOne(),
    );
  }
}
