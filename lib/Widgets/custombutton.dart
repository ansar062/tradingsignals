import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.func,
    this.color,
    this.fontsize = 22,
    required this.text,
    this.height = 0.06,
    this.width = 0.88,
  }) : super(key: key);
  String text;
  Function func;
  Color? color;
  double height;
  double width;
  double fontsize;

  @override
  Widget build(BuildContext context) {
    Color buttonColor = Color.fromARGB(255, 69, 120, 190);
    return InkWell(
      onTap: () {
        func();
      },
      child: Container(
        width: Get.width * width,
        height: Get.height * height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: color ?? buttonColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: fontsize),
          ),
        ),
      ),
    );
  }
}
