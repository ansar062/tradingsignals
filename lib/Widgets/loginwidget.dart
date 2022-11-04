import 'package:flutter/material.dart';
import 'package:tradingsignals/Widgets/passwordTextField.dart';
import 'package:tradingsignals/Widgets/textfield.dart';
import 'package:easy_localization/easy_localization.dart';


Widget logIn(BuildContext context, TextEditingController email,
    TextEditingController password, Function change, Function reset, bool isobsecure, Function show) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'email'.tr(),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        TextFieldInput(
            textEditingController: email,
            hintText: 'emailText'.tr(),
            textInputType: TextInputType.emailAddress),
        SizedBox(
          height: 5,
        ),
        Text(
          'password'.tr(),
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        passwordTextField(context, password, 'passwordText'.tr(), isobsecure, show),
        
        Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: Text('login'.tr())),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  change();
                },
                child: Text('register'.tr())),
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
                child: Text('resetHome'.tr())),
          ],
        )
      ],
    ),
  );
}
