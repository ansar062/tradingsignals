import 'package:flutter/material.dart';
import 'package:tradingsignals/Widgets/passwordTextField.dart';
import 'package:tradingsignals/Widgets/textfield.dart';

Widget signUp(
    BuildContext context,
    TextEditingController username,
    TextEditingController email,
    TextEditingController password,
    Function change,
    bool isobsecure,
    Function show
    ) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Username',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        TextFieldInput(
            textEditingController: username,
            hintText: 'Enter username',
            textInputType: TextInputType.emailAddress,
            ),
        SizedBox(
          height: 5,
        ),
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
            textInputType: TextInputType.emailAddress,
            ),

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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: Text('Register')),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  change();
                },
                child: Text('Login')),
          ],
        ),
      ],
    ),
  );
}
