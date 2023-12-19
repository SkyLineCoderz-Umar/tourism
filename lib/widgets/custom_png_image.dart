import 'package:flutter/cupertino.dart';

class PngImage extends StatelessWidget {
String name;
double?height,width;
  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage("assets/images/$name.png"),height: height,width: width,);
  }

PngImage({
    required this.name,
    this.height,
    this.width,
  });
}
