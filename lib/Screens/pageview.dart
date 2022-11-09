import 'package:flutter/material.dart';
import 'package:tradingsignals/Screens/homeScreen.dart';
import 'package:tradingsignals/Screens/shopScreen.dart';
import 'package:tradingsignals/Screens/signalsScreen.dart';
import 'package:tradingsignals/Screens/startupscreen.dart';
import 'package:tradingsignals/Screens/tipsScreen.dart';

class PGV extends StatefulWidget {
  const PGV({super.key});

  @override
  State<PGV> createState() => _PGVState();
}

class _PGVState extends State<PGV> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          StartUpScreen(),
          HomeScreen(),
          SignalsScreen(),
          TipsScreen(),
          ShopScreen(),
        ],
      ),
    );
  }
}
