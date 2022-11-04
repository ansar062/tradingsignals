import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({super.key});

  @override
  State<TipsScreen> createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.all(5),
                  child: tipsAndShop(context, image, tags, false));
            }),
      ),
    );
  }
}

Widget tipsAndShop(BuildContext context, String url, List tags, bool isShop) {
  var int = 10;
  return Container(
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), //color of shadow
        spreadRadius: 5, //spread radius
        blurRadius: 7, // blur radius
        offset: Offset(0, 2),
      )
    ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child:Image.network(
                        url,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingPrograss) {
                          if (loadingPrograss == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingPrograss.expectedTotalBytes != null
                              ? loadingPrograss.cumulativeBytesLoaded / loadingPrograss.expectedTotalBytes!
                              : null
                              ,
                            ),
                          );
                        },
                      )
              ),
              isShop
                  ? Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            '\$2',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  : Positioned(
                      bottom: 0,
                      child: Container(
                        width: Get.width,
                        height: Get.height * 0.02,
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.5)),
                        child: Center(
                            child: Text(
                          '22/4/2802 /33 ',
                          style: TextStyle(color: Colors.white),
                        )),
                      )),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            'Hello This is No',
            style: TextStyle(
                color: Color.fromARGB(255, 11, 42, 67),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            height: Get.height * 0.05,
            width: Get.width,
            child: Row(children: [
              Expanded(
                child: Text(
                  'Welcome to trading signals. We bring you the best and most popular trading signals in the industory. Feel free to contact with us',
                  style: TextStyle(fontSize: 16),
                  softWrap: false,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 100, minHeight: 50),
            child: Wrap(
              children: [
                for (var item in tags)
                  Padding(
                      padding: EdgeInsets.only(right: 10, bottom: 2),
                      child: ownchip(context, item, Colors.amber)),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ownchip(BuildContext context, String name, Color color) {
  return Container(
    decoration: BoxDecoration(
      color: color.withOpacity(0.3),
      border: Border.all(color: color),
      borderRadius: BorderRadius.circular(22),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        name,
        style: TextStyle(color: Color.fromARGB(255, 168, 164, 164)),
      ),
    ),
  );
}
