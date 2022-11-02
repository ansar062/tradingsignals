import 'package:flutter/material.dart';

class SignalsScreen extends StatefulWidget {
  const SignalsScreen({super.key});

  @override
  State<SignalsScreen> createState() => _SignalsScreenState();
}

class _SignalsScreenState extends State<SignalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Signals(context);
              })),
    );
  }
}

Widget Signals(BuildContext context) {
  return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('data'),
              Flexible(flex: 2, child: Container()),
            ],
          ),
          
        ],
      ),
  );
}
