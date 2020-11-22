import 'package:flutter/material.dart';
import 'package:mobile_jardim/screens/home.dart';

void main() {
  runApp(MyApp());
}

//cor verdinha 0xFF35CE8D | bariol
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iPlant',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0XFF0A0E21),
          scaffoldBackgroundColor: Color(0XFF0A0E21)),
      home: Home(),
    );
  }
}
