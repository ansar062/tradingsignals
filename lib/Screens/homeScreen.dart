import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SizedBox(
                width: screenWidth,
                height: screenHeight * 0.1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Item(context, Colors.green, 'assets/dollar.png', 'Subscribe'),
                    Item(context, Colors.amber, 'assets/question.png', 'FAQ'),
                    Item(context, Colors.blue, 'assets/help.png', 'Help'),
                    Item(context, Colors.blue, 'assets/facebook.png', 'Facebook'),
                    Item(context, Colors.white, 'assets/yt.png', 'YouTube'),
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

Widget Item(BuildContext context, Color color, String path, String name) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10,),
    child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Image.asset(path, height: 10, width: 30,)),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Center(child: Text(name, style: TextStyle(color: Color.fromARGB(255, 182, 175, 175,), fontSize: 12),))
      ],
    ),
  );
}
