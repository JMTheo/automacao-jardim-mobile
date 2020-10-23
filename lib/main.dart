import 'package:flutter/material.dart';
import 'package:mobile_jardim/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iPlant',
      theme: ThemeData(
        primaryColor: Color(0xFF35CE8D),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Bariol'
      ),
      home: Home(),
    );
  }
}


