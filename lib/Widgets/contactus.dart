import 'package:flutter/material.dart';

Widget contactus(BuildContext context, bool isNamed) {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: isNamed ? MediaQuery.of(context).size.width * 0.27  : MediaQuery.of(context).size.width * 0.13,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 3,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              isNamed ? Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Email'),
              ) : Container(),
              isNamed ? Flexible(
                flex: 1,
                child: Container()) : Container(),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.12,
                child: Image.asset('assets/logo.png'),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: isNamed ? MediaQuery.of(context).size.width * 0.27  : MediaQuery.of(context).size.width * 0.13,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 3,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              isNamed ? Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text('Telegram'),
              ) : Container(),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.12,
                child: Image.asset('assets/telegram.png'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
