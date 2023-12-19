import 'package:flutter/cupertino.dart';

class Customtext extends StatelessWidget {
String text;
double? fontsize;
FontWeight? fontWeight;
Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: fontsize,fontWeight: fontWeight,color: textcolor,),);
  }

Customtext({
    required this.text,
    this.fontsize,
    this.fontWeight,
    required this.textcolor,
  });
}
