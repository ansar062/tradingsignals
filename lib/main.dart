

import 'package:flutter/cupertino.dart';
import 'package:tradingsignals/Screens/homeScreen.dart';
import 'package:tradingsignals/Screens/shopScreen.dart';
import 'package:tradingsignals/Screens/signalsScreen.dart';
import 'package:tradingsignals/Screens/tipsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      
      home:SignalsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
