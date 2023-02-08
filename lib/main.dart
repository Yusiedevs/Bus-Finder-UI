import 'package:bus_app/constants/constants.dart';
import 'package:bus_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BusApp());
}

class BusApp extends StatelessWidget {
  const BusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kMainColor,
      ),
      home: SplashScreen(),
    );
  }
}