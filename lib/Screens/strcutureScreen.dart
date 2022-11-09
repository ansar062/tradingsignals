import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingsignals/Screens/homeScreen.dart';
import 'package:tradingsignals/Screens/shopScreen.dart';
import 'package:tradingsignals/Screens/signalsScreen.dart';
import 'package:tradingsignals/Screens/tipsScreen.dart';

import '../Widgets/gradientIconReource.dart';

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
  pop() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenWidth, screenHeight * 0.06),
        child: Stack(children: [
          Container(
            height: screenHeight * 0.2,
            width: screenWidth,
          ),
          Container(),
          Positioned(
            // To take AppBar Size only
            bottom: 5.0,
            left: 10.0,
            right: 10.0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.05,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 33, 70, 101),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          enableDrag: false,
                          constraints: BoxConstraints(
                              maxHeight: screenHeight * 0.4, minHeight: 50),
                          //anchorPoint: Snap,
                          context: context,
                          builder: (context) =>
                              Profile(context, screenHeight, screenWidth, pop),
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://wallpapers.com/images/hd/cool-profile-picture-paper-bag-head-4co57dtwk64fb7lv.jpg'),
                          radius: 18,
                        ),
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
                          height: screenHeight * 0.04,
                          width: screenWidth * 0.5,
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
                width: screenWidth * 0.2,
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
                width: screenWidth * 0.2,
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
                width: screenWidth * 0.2,
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
                width: screenWidth * 0.2,
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

Widget Profile(BuildContext context, double screenHeight, double screenWidth,
    VoidCallback function) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Color.fromARGB(255, 9, 37, 60),
          height: screenHeight * 0.07,
          width: screenWidth,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  'PROFILE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                InkWell(
                  onTap: () {
                    function();
                  },
                  child: Container(
                    height: screenHeight * 0.04,
                    width: screenWidth * 0.09,
                    decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.blue, Colors.red]),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(255, 9, 37, 60),
                        ),
                        alignment: Alignment.center,
                        child: GradientIcon(Icons.arrow_forward, 20,
                            LinearGradient(colors: [Colors.blue, Colors.red])),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //AVATAR
        Center(
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: screenHeight * 0.08,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://wallpapers.com/images/hd/cool-profile-picture-paper-bag-head-4co57dtwk64fb7lv.jpg'),
              radius: screenHeight*0.075,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Trial Period expired. kindly subcribe',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'example@gmail.com',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'HJHI9u0dsjlkxj87UOIjou09',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    ),
  );
}
