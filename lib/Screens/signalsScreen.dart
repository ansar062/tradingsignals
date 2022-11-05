import 'package:flutter/material.dart';

class SignalsScreen extends StatefulWidget {
  const SignalsScreen({super.key});

  @override
  State<SignalsScreen> createState() => _SignalsScreenState();
}

class _SignalsScreenState extends State<SignalsScreen> {
  List<int> indexesCount = [2, 5, 4, 4, 6];
  List<String> sellorbuy = ['Sell', 'Buy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              if(index % 2== 0){
                return Container(
                  padding: EdgeInsets.all(5),
                  child: details(context, indexesCount[index], sellorbuy[0], Colors.red));
              }
              return Container(
                  padding: EdgeInsets.all(5),
                  child: details(context, indexesCount[index], sellorbuy[1], Colors.blue));
            }),
      ),
    );
  }
}

Widget details(BuildContext context, int count, String action, Color color) {
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
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Color.fromARGB(255, 228, 228, 228), width: 0.5))),
          child: SizedBox(
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
                  color: color,
                  child: Center(child: Text(action, style: TextStyle(color: Colors.white, fontSize: 16),)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
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
                    Divider(),
                  ],
                );
              }),
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.03,
              child: Image.asset('assets/sl.png'),
            ),
            Text(
              'SL',
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
        Divider(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '22/04/2003',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '2hrs ago',
                      style: TextStyle(
                          color: Color.fromARGB(255, 31, 83, 124),
                          fontSize: 14),
                    ),
                  )
                ],
              ),
              Flexible(flex: 2, child: Container()),
              Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.03,
                child: Image.asset('assets/timemon.png'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
