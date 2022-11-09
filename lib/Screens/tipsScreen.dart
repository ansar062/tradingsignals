import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingsignals/Screens/commonScreen.dart';
import 'package:tradingsignals/Widgets/networkImage.dart';

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
  String text = ''' "Don't bury the lede!" The first few sentences must capture the reader's attention, provide a gist of the story, and give a sense of where the essay is heading. Think about any article you've read—how do you decide to read it? You read the first few sentences and then decide. The same goes for college essays. A strong lede (journalist parlance for "lead") will place your reader in the "accept" mindset from the beginning of the essay. A weak lede will have your reader thinking "reject"—a mindset from which it's nearly impossible to recover.

This college essay tip is by Brad Schiller, MIT graduate and CEO of Prompt, which provides individualized feedback on thousands of students’ essays each year.

3. Don't read the Common Application prompts.

If you already have, erase them from memory and write the story you want colleges to hear. The truth is, admission reviewers rarely know—or care—which prompt you are responding to. They are curious to discover what you choose to show them about who you are, what you value, and why. Even the most fluid writers are often stifled by fitting their narrative neatly into a category and the essay quickly loses authentic voice. Write freely and choose a prompt later. Spoiler alert...one prompt is "Share an essay on any topic of your choice. It can be one you've already written, one that responds to a different prompt, or one of your own design. " So have at it.

This college essay tip is by Brennan Barnard, director of college counseling at the Derryfield School in Manchester, N.H. and contributor to the NYT, HuffPost, and Forbes on intentionally approaching college admissions. ''';
 
  ShowTipDetails() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CommonScreen(
                  details: text,
                  title: 'We Make Money Again',
                  imageUrl: 'https://media.istockphoto.com/id/1179580531/photo/latin-broker-buying-shares-online.jpg?s=612x612&w=0&k=20&c=uxfClFZQxNq76HjUhBBGWZhI1JDfE3HK160uSuthI3Y=',
                  isShop: false,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.all(5),
                  child: tipsAndShop(context, image, tags, false, ShowTipDetails));
            }),
      ),
    );
  }
}

Widget tipsAndShop(BuildContext context, String url, List tags, bool isShop,
    VoidCallback function) {
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
        InkWell(
          onTap: function,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    networkImageWidget(context, url, BoxFit.cover),
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
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5)),
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
            ],
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
