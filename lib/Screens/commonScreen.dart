import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingsignals/Screens/tipsScreen.dart';
import 'package:tradingsignals/Widgets/contactus.dart';
import 'package:tradingsignals/Widgets/custombutton.dart';
import 'package:tradingsignals/Widgets/networkImage.dart';

class CommonScreen extends StatefulWidget {
  final bool isAppBar;
  final String imageUrl;
  final String title;
  final String details;
  final bool isShop;
  const CommonScreen({
    super.key,
    this.isAppBar = true,
    required this.details,
    required this.title,
    required this.imageUrl,
    this.isShop = true,
  });

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  List<String> tags = [
    'c++',
    'dart',
    'python',
  ];
  double value = 14;
  @override
  @override
  Widget build(BuildContext context) {
    double maxh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: widget.isAppBar
          ? AppBar(
              title: Text(
                'Details',
                style: TextStyle(fontSize: 18),
              ),
              backgroundColor: Color.fromARGB(255, 15, 47, 72),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            )
          : null,
      body: SizedBox(
        height: maxh,
        child: ListView(shrinkWrap: true, children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: maxh * 5,
              minHeight: 10,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.imageUrl),
                    )),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.22,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Font Size',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 69, 114, 151),
                                        fontSize: 16),
                                  ),
                                  Slider(
                                      min: 14,
                                      max: 23,
                                      activeColor: Colors.green,
                                      value: value,
                                      onChanged: (double val) {
                                        setState(() {
                                          value = val;
                                        });
                                      }),
                                  Text('${value.toInt()}',
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 69, 114, 151),
                                          fontSize: 16)),
                                ],
                              ),
                            ),
                            Divider(),
                            Text(
                              widget.title,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 37, 81, 117),
                                  fontSize: value,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              widget.details,
                              style: TextStyle(fontSize: value),
                            ),
                            Divider(),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(),
                            SizedBox(
                              height: 20,
                            ),
                            widget.isShop
                                ? shopDetails(context)
                                : tipsdetails(context, tags),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget itemmm(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Card(
      child: Container(
        width: Get.width * 0.25,
        child: Column(
          children: [
            Container(
                height: Get.height * 0.08,
                width: Get.width * 0.25,
                child: networkImageWidget(
                    context,
                    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-674010.jpg&fm=jpg',
                    BoxFit.fill)),
            Container(
              child: Text(
                'HOW TO HANDLE EMOTIONS WHEN TRADING',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget tipsdetails(BuildContext context, List tags) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
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
      ContactUs(
        isNamed: false,
        path1: 'assets/mic.png',
        path2: 'assets/share.png',
        height: 0.04,
        namedwidth: 0.1,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('You may also like...'),
      ),
      SizedBox(
        height: Get.height * 0.15,
        width: Get.width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return itemmm(context);
            }),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Shop Special...'),
      ),
      SizedBox(
        height: Get.height * 0.15,
        width: Get.width,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return itemmm(context);
            }),
      ),
    ],
  );
}

Widget shopDetails(BuildContext context) {
  return Column(
    children: [
      Container(
        height: Get.height * 0.06,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(255, 38, 82, 118),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.tips_and_updates,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Downloaded File is stored in your Device's Downloads Folder",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.blue,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '\$12',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Flexible(
            child: Container(),
            flex: 1,
          ),
          CustomButton(
            func: () {},
            text: 'BUY',
            width: 0.6,
            height: 0.05,
            color: Colors.blue,
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      ContactUs(
        isNamed: false,
        path1: 'assets/mic.png',
        path2: 'assets/share.png',
        height: 0.04,
        namedwidth: 0.1,
      ),
    ],
  );
}
