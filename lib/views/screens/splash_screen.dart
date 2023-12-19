import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/views/screens/splash_screen2.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_png_image.dart';
import 'package:tourism/widgets/custom_small_text.dart';
import 'package:tourism/widgets/custom_svg_image.dart';
import 'package:tourism/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 45),(){
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splash2()));
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/splash.png"),fit: BoxFit.cover)
        ),
        child:Column(
          children: [
          // Image.asset("image1.png"),
            PngImage(name: "image1").paddingOnly(top: 5.h),
          SizedBox(height: 20,),
          Customtext(text: "Tourism", textcolor: Color(0xff2FB8A6,),fontWeight: FontWeight.w600,fontsize: 25,),
          Spacer(flex: 5,),
          CustomButton(text: "Get Started", color: AppColor,width:70.w, ontap: (){Get.to(Splash2());}, textcolor: Colors.white,),
            SizedBox(height: 40,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              SmallText(text: "Already have an account", color: Colors.white),
              IntrinsicHeight(child: VerticalDivider(color: Colors.black,thickness: 5,width: 5,)),
              TextButton(onPressed: (){}, child: Text("Login",style: TextStyle(color: Colors.white),)),
            ]),
            SizedBox(height: 40,),
        ],),
      ),
    );
  }
}
