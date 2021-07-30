import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomePage(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [HexColor('#d52a22'), HexColor('ed2b58')],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('images/icon.png'),
          SizedBox(
            height: 30.0,
          ),
          SpinKitSquareCircle(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
