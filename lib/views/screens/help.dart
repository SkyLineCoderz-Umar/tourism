import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_png_image.dart';
import 'package:tourism/widgets/custom_text.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 55.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(blurRadius: 40, color: Colors.grey)]),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Customtext(
                    text: "Enter Details",
                    textcolor: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontsize: 18,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        hintText: "Your Name",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide(width: 1))),
                  ).marginAll(18),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                        hintText: "Your Email",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                        enabledBorder:
                            OutlineInputBorder(
                                borderSide: BorderSide(width: 1))),
                  ).marginAll(18),
                  SizedBox(
                    height: 15.h,
                    child: TextField(
                      expands: true,
                      maxLines: null,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Description",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black), //<-- SEE HERE
                        ),
                        labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ).marginAll(18),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomButton(
                    text: "Send",
                    color: AppColor,
                    textcolor: Colors.white,
                    ontap: () {},
                    width: 50.w,
                    height: 5.h,
                  )
                ],
              ),
            ).marginAll(20),
            Divider(),
            Customtext(
              text: "We Are Available On",
              textcolor: Colors.black,
              fontWeight: FontWeight.w600,
              fontsize: 22,
            ).marginOnly(left: 15),
            SizedBox(height: 2.h,),
            ListTile(
              leading: Icon(Icons.email_outlined,color: Colors.green,size: 55,),
              title: Text("www.Tourism.com"),
            ),
            ListTile(
              leading: Icon(Icons.email,color: Colors.blue,size: 55,),
              title: Text("tourism07@gmail.com"),
            ),
            ListTile(
              leading: Icon(Icons.phone_android_outlined,color: Colors.green,size: 55,),
              title: Text("+1-98765433456"),
            )
          ],
        ),
      ),
    );
  }
}
