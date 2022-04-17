import 'dart:async';

import 'package:automobile_info/register.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'MyVehicles.dart';
import 'login.dart';
import 'Services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => MyHomePage(),
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'homeScreen': (context) => HomeScreen(),
      'MyVehicle' : (context) => MyVehicles()
      'services': (context) => Services()
    },
    // home: MyVehicles(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyRegister())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/s1.png'),
        fit: BoxFit.cover,
      ),
    ));
  }
}
