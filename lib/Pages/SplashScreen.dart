import 'dart:async';
import 'package:flutter/material.dart';
import 'package:utopia/Constants/ConstantColor.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: ConstantColor.BACKGROUND,
        child: Center(
          child: Image.asset('assets/splash.png'),
        ),
      ),
    );
  }
}