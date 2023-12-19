import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../../widgets/custom_png_image.dart';
import '../../widgets/custom_text.dart';

class LayoutPending extends StatefulWidget {
  const LayoutPending({super.key});

  @override
  State<LayoutPending> createState() => _LayoutPendingState();
}

class _LayoutPendingState extends State<LayoutPending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 3.h,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 40, color: Colors.grey)]),
            height: 10.h,
            child: Row(
              children: [
                PngImage(
                  name: "img",
                  height: 20.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Customtext(
                      text: "Person Name",
                      textcolor: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          text: "Booking from:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                          children: [
                            TextSpan(
                              text: "19 Aug, 2021",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          text: "Booking to:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                          children: [
                            TextSpan(
                              text: "24 Aug, 2021",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ]
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 3.h,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 40, color: Colors.grey)]),
            height: 10.h,
            child: Row(
              children: [
                PngImage(
                  name: "img_1",
                  height: 20.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Customtext(
                      text: "Person Name",
                      textcolor: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          text: "Booking from:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                          children: [
                            TextSpan(
                              text: "19 Aug, 2021",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          text: "Booking to:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                          children: [
                            TextSpan(
                              text: "24 Aug, 2021",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ]
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 3.h,),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(blurRadius: 40, color: Colors.grey)]),
            height: 10.h,
            child: Row(
              children: [
                PngImage(
                  name: "img_2",
                  height: 20.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Customtext(
                      text: "Person Name",
                      textcolor: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          text: "Booking from:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                          children: [
                            TextSpan(
                              text: "19 Aug, 2021",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                      text: TextSpan(
                          text: "Booking to:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                          children: [
                            TextSpan(
                              text: "24 Aug, 2021",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ]
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ).paddingAll(14),
    );
  }
}
