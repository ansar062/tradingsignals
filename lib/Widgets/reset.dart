import 'package:flutter/material.dart';
import 'package:tradingsignals/Widgets/textfield.dart';
import 'package:easy_localization/easy_localization.dart';

Widget reseting(
    BuildContext context, TextEditingController email, Function back) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reset',
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
        Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: Text(  'reset'.tr() ,style: TextStyle(overflow: TextOverflow.ellipsis),    )
                
                
                ),
           
          ],
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            onPressed: () {
              back();
            },
            child: Text('Back')),
      ],
    ),
  );
}
