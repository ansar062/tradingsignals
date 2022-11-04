import 'package:flutter/material.dart';

class SignalsScreen extends StatefulWidget {
  const SignalsScreen({super.key});

  @override
  State<SignalsScreen> createState() => _SignalsScreenState();
}

class _SignalsScreenState extends State<SignalsScreen> {
  List<int> indexesCount = [2, 5, 4, 4, 6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                  padding: EdgeInsets.all(5),
                  child: details(context, indexesCount[index]));
            }),
      ),
    );
  }
}

Widget details(BuildContext context, int count) {
  return Container(
    //padding: EdgeInsets.all(16),
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), //color of shadow
        spreadRadius: 5, //spread radius
        blurRadius: 7, // blur radius
        offset: Offset(0, 2),
      )
    ]),
    child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.04,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Step Index @ 8948',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Flexible(flex: 2, child: Container()),
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.04,
                color: Colors.blue,
                child: Center(child: Text('Buy')),
              ),
            ],
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height, minHeight: 50),
          child: ListView.builder(
              itemCount: count,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Divider(),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.03,
                          child: Image.asset('assets/dollartag.png'),
                        ),
                        Text(
                          'TP${index + 1}',
                          style: TextStyle(fontSize: 18),
                        ),
                        Flexible(flex: 2, child: Container()),
                        Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              '20820',
                              style: TextStyle(fontSize: 16),
                            )),
                      ],
                    ),
                  ],
                );
              }),
        ),
        Divider(),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.03,
              child: Image.asset('assets/sl.png'),
            ),
            Text('SL', style: TextStyle(fontSize: 18),),
            Flexible(flex: 2, child: Container()),
            Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              '20820',
                              style: TextStyle(fontSize: 16),
                            )),
          ],
        ),
        Divider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('2hrs ago')
                ],
              ),
              Flexible(flex: 2, child: Container()),
              Icon(Icons.menu)
            ],
          ),
        ),
      ],
    ),
  );
}
