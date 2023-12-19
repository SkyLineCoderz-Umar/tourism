import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImages extends StatelessWidget {
String name;
double? hieght,width;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assests/icons/$name.svg",
      height: hieght,width: width,);
  }

SvgImages({
    required this.name,
     this.hieght,
     this.width,
  });
}
