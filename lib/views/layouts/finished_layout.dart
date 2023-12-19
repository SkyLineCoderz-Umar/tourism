import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../../widgets/custom_png_image.dart';
import '../../widgets/custom_text.dart';

class LayoutFinished extends StatefulWidget {
  const LayoutFinished({super.key});

  @override
  State<LayoutFinished> createState() => _LayoutFinishedState();
}

class _LayoutFinishedState extends State<LayoutFinished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:ListView.builder(itemBuilder: (BuildContext context, int index) {
       return Column(
         children: [
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
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Customtext(
                           text: "Person Name",
                           textcolor: Colors.black,
                           fontWeight: FontWeight.w600,
                           fontsize: 16,
                         ), Column(
                           children: [
                             Customtext(
                               text: "Person Name",
                               textcolor: Colors.black,
                               fontWeight: FontWeight.w500,
                               fontsize: 12,
                             ),  Customtext(
                               text: "Person Name",
                               textcolor: Colors.black,
                               fontWeight: FontWeight.w500,
                               fontsize: 12,
                             ),
                           ],
                         ),
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
           ).marginAll(15),
         ],
       );
     },)
     );

  }
}
