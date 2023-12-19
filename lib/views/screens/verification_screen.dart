import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_textfeild.dart';

import '../../widgets/custom_png_image.dart';
import '../../widgets/custom_text.dart';
import 'bussiness_home.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            PngImage(
              name: 'image2',
            ),
            SizedBox(
              height: 5.h,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Customtext(
                  text: "Verification",
                  textcolor: Colors.black,
                  fontsize: 24,
                  fontWeight: FontWeight.w600,
                )
            ),
            SizedBox(
              height: 2.h,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Customtext(
                  text: "Enter the OTP code sent to your email",
                  textcolor: Colors.black,
                  fontsize: 16,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextField(
                  height: 60,
                  width: 60,
                  borderRadius: BorderRadius.circular(12), textInputType: null,
                ),
                CustomTextField(
                  height: 60,
                  width: 60,
                  borderRadius: BorderRadius.circular(12), textInputType: TextInputType.number,
                ),
                CustomTextField(
                  height: 60,
                  width: 60,
                  borderRadius: BorderRadius.circular(12), textInputType: TextInputType.number,
                ),
                CustomTextField(
                  height: 60,
                  width: 60,
                  borderRadius: BorderRadius.circular(12), textInputType: TextInputType.number,
                ),
              ],
            ),
            SizedBox(
              height:10.h,
            ),
            Customtext(
              text: "Did not receive a code?",
              textcolor: Color(0xff939393),
              fontsize: 18,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 3.h,),
            TextButton(
                onPressed: () {},
                child: Text(
                  "R E S E N D",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor),
                )),
            SizedBox(height: 10.h,),
            CustomButton(text: "Done", color: AppColor, textcolor: Colors.white, ontap: (){
              Get.to(BussinessHome());
            },width: 75.w,)
          ],
        ),
      ),
    );
  }
}
