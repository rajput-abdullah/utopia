import 'package:flutter/material.dart';
import 'package:utopia/Pages/SplashScreen.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/SplashScreen',
  routes: {
    '/SplashScreen': (context) => SplashScreen(),

  },
));
