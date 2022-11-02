import 'package:flutter/material.dart';
import 'package:tradingsignals/Widgets/passwordTextField.dart';
import 'package:tradingsignals/Widgets/textfield.dart';

Widget logIn(BuildContext context, TextEditingController email,
    TextEditingController password, Function change, Function reset, bool isobsecure, Function show) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        TextFieldInput(
            textEditingController: email,
            hintText: 'Enter email address',
            textInputType: TextInputType.emailAddress),
        SizedBox(
          height: 5,
        ),
        Text(
          'Password',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        passwordTextField(context, password, 'Enter password', isobsecure, show),
        
        Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: Text('Login')),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  change();
                },
                child: Text('Register')),
          ],
        ),
        Row(
          children: [
            Flexible(flex: 2, child: Container()),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  reset();
                },
                child: Text('Reset')),
          ],
        )
      ],
    ),
  );
}
