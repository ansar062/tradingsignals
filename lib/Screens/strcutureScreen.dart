import 'package:flutter/material.dart';
import 'package:tradingsignals/Screens/homeScreen.dart';
import 'package:tradingsignals/Screens/shopScreen.dart';
import 'package:tradingsignals/Screens/signalsScreen.dart';
import 'package:tradingsignals/Screens/tipsScreen.dart';

class StrcutureScreen extends StatefulWidget {
  const StrcutureScreen({super.key});

  @override
  State<StrcutureScreen> createState() => _StrcutureScreenState();
}

class _StrcutureScreenState extends State<StrcutureScreen> {
  int _selectedIndex = 0;
  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    SignalsScreen(),
    TipsScreen(),
    ShopScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 7, 32, 52),
        //selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.2,
                color: Color.fromARGB(255, 33, 81, 119),
                child: Column(
                  children: [
                    Icon(Icons.home),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.2,
                color: Color.fromARGB(255, 33, 81, 119),
                child: Column(
                  children: [
                    Icon(Icons.signal_cellular_alt),
                    Text(
                      'Signals',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            label: 'Signals',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.2,
                color: Color.fromARGB(255, 33, 81, 119),
                child: Column(
                  children: [
                    Icon(Icons.tips_and_updates),
                    Text(
                      'Tips',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            label: 'Tips',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 2),
                width: MediaQuery.of(context).size.width * 0.2,
                color: Color.fromARGB(255, 33, 81, 119),
                child: Column(
                  children: [
                    Icon(Icons.shopping_cart),
                    Text(
                      'Shop',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}
