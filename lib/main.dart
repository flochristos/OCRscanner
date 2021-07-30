import 'package:flutter/material.dart';
import 'package:imitscan/splashscreen.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImitScan',
      debugShowCheckedModeBanner: false,
      color: HexColor('#d52a22'),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'Poppins',
      ),
      home: SplashScreen(),
    );
  }
}
