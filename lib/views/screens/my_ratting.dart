import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../../widgets/custom_png_image.dart';
import '../../widgets/custom_text.dart';

class MyRatting extends StatefulWidget {
  const MyRatting({super.key});

  @override

  State<MyRatting> createState() => _MyRattingState();
}

class _MyRattingState extends State<MyRatting> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Ratings"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(blurRadius: 40, color: Colors.grey)]),
              height: 10.h,
              child: Row(
                children: [
                  PngImage(
                    name: "img_23",
                    height: 20.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Customtext(
                        text: "Name",
                        textcolor: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontsize: 16,
                      ),
                      SizedBox(height: 5,),
                      Customtext(text: "Review description", textcolor: Colors.grey),
                      RatingBar.builder(
                        itemSize: 20,
                        minRating: 0,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) => setState(() {
                          this.rating = rating;
                        }),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ).marginAll(15);
      },),
    );
  }
}
