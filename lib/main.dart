import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'homeScreen',
    routes: {
      'homeScreen' : (context) => HomeScreen(),
    },
  ));
}



