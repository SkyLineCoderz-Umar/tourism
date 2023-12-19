import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';

class CustomButton extends StatelessWidget {
double? width;
double? height;
String text;
Color color;
Color textcolor;
VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: height??45,
        width: width??Get.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(blurRadius: 30.0,color: Colors.grey)
          ]
        ),
        child: Text(text,style: TextStyle(color: textcolor),),
      ),
    );
  }

CustomButton({
    this.width,
    this.height,
    required this.text,
    required this.color,
    required this.textcolor,
    required this.ontap,
  });
}
