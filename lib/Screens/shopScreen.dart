import 'package:flutter/material.dart';
import 'package:tradingsignals/Screens/tipsScreen.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  String image =
      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg';
  List<String> tags = [
    'hy',
    'dart',
    'python',
    'c++',
    'shell',
    'c',
    'ruby',
    'camel',
    'javascript',
    'java'
  ];
  bool isShop = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(5),
                  child: tipsAndShop(context, image, tags, isShop));
            }),
      ),
    );
  }
}
