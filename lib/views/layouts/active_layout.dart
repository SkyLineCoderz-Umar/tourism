import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/widgets/custom_png_image.dart';
import 'package:tourism/widgets/custom_text.dart';

import '../../widgets/custom_contaner.dart';
import '../screens/booking_detail.dart';

class LayoutActive extends StatefulWidget {
  const LayoutActive({super.key});

  @override
  State<LayoutActive> createState() => _LayoutActiveState();
}

class _LayoutActiveState extends State<LayoutActive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 3.h,),
          GestureDetector(
            onTap: (){Get.to(BookingDetail());},
            child: Container(
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
                      Row(

                        children: [
                          Customtext(
                            text: "Person Name",
                            textcolor: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontsize: 16,
                          ), Customtext(
                            text: "03 Dec, 2021",
                            textcolor: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontsize: 8,
                          ).marginOnly(left: 30.w),

                        ],
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
          ),
          SizedBox(height: 4.h,),
          GestureDetector(
            onTap: (){Get.to(BookingDetail());},
            child: Container(
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
                      Row(

                        children: [
                          Customtext(
                            text: "Person Name",
                            textcolor: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontsize: 16,
                          ), Customtext(
                            text: "03 Dec, 2021",
                            textcolor: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontsize: 8,
                          ).marginOnly(left: 30.w),

                        ],
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
          ),
          SizedBox(height: 4.h,),
          GestureDetector(
            onTap: (){Get.to(BookingDetail());},
            child: Container(
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
                      Row(

                        children: [
                          Customtext(
                            text: "Person Name",
                            textcolor: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontsize: 16,
                          ), Customtext(
                            text: "03 Dec, 2021",
                            textcolor: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontsize: 8,
                          ).marginOnly(left: 30.w),

                        ],
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
          ),
        ],
      ),
    ).paddingAll(12);
  }
}
