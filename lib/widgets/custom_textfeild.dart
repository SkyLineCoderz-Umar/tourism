import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';

class CustomTextField extends StatelessWidget {
  final double? height,width;
  final String? hintText;
  final IconData? prefixicon;
  final IconData? suffixicon;
  final bool? obscureText;
  final String? label;
  final Color? color;
  final Color? textcolor;
  final Color? hintcolor;
  final BorderRadius? borderRadius;
  final TextInputType? textInputType;




  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
              color: color??Colors.white,
              borderRadius: borderRadius??BorderRadius.circular(25),
              boxShadow: [BoxShadow(color:color ??Colors.grey.shade400,blurRadius: 30)]
          ),
          height: height,
          width: width,
          //padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            style: TextStyle(color: textcolor,),
            cursorColor: hintcolor,
            keyboardType:  textInputType??TextInputType.text,
            decoration: InputDecoration(
              hintText: hintText,contentPadding: EdgeInsets.symmetric(horizontal: 20,
                vertical: 14),
              suffixIcon: Icon(suffixicon,color: AppColor,),
              hintStyle: TextStyle(color: hintcolor,),
              labelText: label,
              border: InputBorder.none,
            ),
          ),
        )
      ],
    );
  }

  const CustomTextField({
    this.height,
    this.width,
    this.hintText,
    this.prefixicon,
    this.suffixicon,
    this.obscureText,
    this.label,
    this.color,
    this.textcolor,
    this.hintcolor,
    this.borderRadius,
    required this.textInputType,
  });
}