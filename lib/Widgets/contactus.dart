import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  final double height;
  final double width;
  final double namedwidth;
  final String path1;
  final String path2;
  final bool isNamed;
  const ContactUs(
      {super.key,
      required this.isNamed,
      required this.path1,
      required this.path2,
      this.height = 0.06,
      this.namedwidth = 0.13,
      this.width = 0.27});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * height,
            width: isNamed
                ? MediaQuery.of(context).size.width * width+1
                : MediaQuery.of(context).size.width * namedwidth,
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
                isNamed
                    ? Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text('Email'),
                      )
                    : Container(),
                isNamed ? Flexible(flex: 1, child: Container()) : Container(),
                Container(
                  height: MediaQuery.of(context).size.height * height,
                  width: MediaQuery.of(context).size.width * namedwidth,
                  child: Image.asset(path1),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * height,
            width: isNamed
                ? MediaQuery.of(context).size.width * width+1
                : MediaQuery.of(context).size.width * namedwidth,
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
                isNamed
                    ? Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text('Telegram'),
                      )
                    : Container(),
                Container(
                  height: MediaQuery.of(context).size.height * height,
                  width: MediaQuery.of(context).size.width * namedwidth,
                  child: Image.asset(path2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
