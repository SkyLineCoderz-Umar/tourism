import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
String text;
double? fontsize;
FontWeight?fontWeight;
Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12,color: color),);
  }
SmallText({
    required this.text,
    this.fontsize,
    this.fontWeight,
    required this.color,
  });
}
