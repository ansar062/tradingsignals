import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget passwordTextField(BuildContext context, TextEditingController password,
    String hintText, bool isobsecure, Function show) {
  final inputBorder = OutlineInputBorder(
    borderSide: Divider.createBorderSide(context, color: Colors.grey),
  );

  return CupertinoTextField(
    controller: password,
    // decoration: InputDecoration(
    //   suffixIcon: IconButton(
    //     icon: isobsecure ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
    //     onPressed: () {
    //       show();
    //     },
    //   ),
    //   hintText: hintText,
    //   border: inputBorder,
    //   focusedBorder: inputBorder,
    //   enabledBorder: inputBorder,
    //   filled: false,
    //   contentPadding: const EdgeInsets.all(8),
    // ),
    obscureText: isobsecure,
  );
}
