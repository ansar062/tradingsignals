import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingsignals/Widgets/contactus.dart';

class CommonScreen extends StatefulWidget {
  final bool isAppBar;
  final String imageUrl;
  final String title;
  final String details;
  final bool isAddExtra;
  const CommonScreen({
    super.key,
    this.isAppBar = true,
    required this.details,
    required this.title,
    required this.imageUrl,
    this.isAddExtra = true,
  });

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  double value = 14;
  @override
  Widget build(BuildContext context) {
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
        body: Container(
            child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: Get.height * 5, minHeight: 100),
          child: ListView(
            shrinkWrap: true,
            children: [
              SingleChildScrollView(
                child: Container(
                  child: Column(children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: Get.height * 5,
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
                                padding: EdgeInsets.all(20),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Text(
                                              'Font Size',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 69, 114, 151),
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
                                                    color: Color.fromARGB(
                                                        255, 69, 114, 151),
                                                    fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Text(widget.title, style: TextStyle(color: const Color.fromARGB(255, 37, 81, 117), fontSize: value, fontWeight: FontWeight.bold),),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(widget.details, style: TextStyle(fontSize: value),),
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
              ),
            ],
          ),
        )));
  }
}
