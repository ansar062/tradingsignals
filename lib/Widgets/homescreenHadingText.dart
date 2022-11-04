import 'package:flutter/material.dart';

Widget homeHadings(BuildContext context, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      text,
      style: TextStyle(
          color: Color.fromARGB(255, 22, 57, 85),
          fontSize: 20,
          fontWeight: FontWeight.bold),
    ),
  );
}
