

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradingsignals/Screens/homeScreen.dart';
import 'package:tradingsignals/Screens/signalsScreen.dart';
import 'package:tradingsignals/Screens/startupscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: StartUpScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
