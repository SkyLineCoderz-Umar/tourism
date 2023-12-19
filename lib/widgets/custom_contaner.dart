import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 83,
        color: Colors.white,
        child: Row(
          children: [
            Image(image: AssetImage("assets/images/img.png")),
            Column(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "text",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),TextSpan(
                        text: "text",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),TextSpan(
                        text: "text",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
