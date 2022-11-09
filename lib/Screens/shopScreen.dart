import 'package:flutter/material.dart';
import 'package:tradingsignals/Screens/commonScreen.dart';
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
  String text = ''' "Don't bury the lede!" The first few sentences must capture the reader's attention, provide a gist of the story, and give a sense of where the essay is heading. Think about any article you've read—how do you decide to read it? You read the first few sentences and then decide. The same goes for college essays. A strong lede (journalist parlance for "lead") will place your reader in the "accept" mindset from the beginning of the essay. A weak lede will have your reader thinking "reject"—a mindset from which it's nearly impossible to recover.

This college essay tip is by Brad Schiller, MIT graduate and CEO of Prompt, which provides individualized feedback on thousands of students’ essays each year.

3. Don't read the Common Application prompts.

If you already have, erase them from memory and write the story you want colleges to hear. The truth is, admission reviewers rarely know—or care—which prompt you are responding to. They are curious to discover what you choose to show them about who you are, what you value, and why. Even the most fluid writers are often stifled by fitting their narrative neatly into a category and the essay quickly loses authentic voice. Write freely and choose a prompt later. Spoiler alert...one prompt is "Share an essay on any topic of your choice. It can be one you've already written, one that responds to a different prompt, or one of your own design. " So have at it.

This college essay tip is by Brennan Barnard, director of college counseling at the Derryfield School in Manchester, N.H. and contributor to the NYT, HuffPost, and Forbes on intentionally approaching college admissions. ''';
 
  bool isShop = true;
  show() async {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CommonScreen(
                  details: text, title: 'Investment Strategy', imageUrl: 'https://images.moneycontrol.com/static-mcnews/2021/12/Markets-Bull-Bear-770x433.jpg')));
    
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
                  child: tipsAndShop(context, image, tags, isShop, show));
            }),
      ),
    );
  }
}
