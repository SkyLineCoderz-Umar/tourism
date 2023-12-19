import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/views/screens/singup_screen.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_png_image.dart';
import 'package:tourism/widgets/custom_small_text.dart';
import 'package:tourism/widgets/custom_text.dart';

import 'login_screen.dart';

class Splash2 extends StatefulWidget {
  const Splash2({super.key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40.sp),
        child: Column(children: [
          SizedBox(height:5.h,),
          PngImage(name: 'Growth',),
          SizedBox(height: 20.sp,),
          Customtext(text: "Grow Your Business", textcolor: Colors.black,fontsize: 24,fontWeight: FontWeight.w500,),
          SizedBox(height: 10,),
          SmallText(text: "Provide best deal and services to grow your business.", color: Color(0xff949494)),
          Spacer(),
          CustomButton(text: "Login", color: AppColor, ontap: (){
            Get.to(LoginScreen());
          }, textcolor: Colors.white,),
          SizedBox(height: 5.h,),
          CustomButton(text: "Create Acount", color: Colors.white, ontap: (){Get.to(SignUpScreen());}, textcolor: Colors.black,),
          SizedBox(height: 8.h,),

        ],),
      ),
    );
  }
}
