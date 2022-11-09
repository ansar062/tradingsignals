import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height * 0.08),
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
          ),
          Container(),
          Positioned(
            // To take AppBar Size only
            top: 32.0,
            left: 10.0,
            right: 10.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 33, 70, 101),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://wallpapers.com/images/hd/cool-profile-picture-paper-bag-head-4co57dtwk64fb7lv.jpg'),
                        radius: 18,
                      ),
                    ),
                  ),
                  _selectedIndex == 0
                      ? Text(
                          'Trading Signals',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      : SizedBox(
                          height: Get.height * 0.04,
                          width: Get.width * 0.5,
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Search",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey))),
                        ),
                  Flexible(
                    child: Container(),
                    flex: 1,
                  ),
                  _selectedIndex == 0
                      ? Container()
                      : IconButton(
                          icon: Icon(Icons.search, color: Colors.white),
                          onPressed: () {},
                        ),
                ],
              ),
            ),
          )
        ]),
      ),
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
