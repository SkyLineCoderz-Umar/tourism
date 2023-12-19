import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/views/screens/home.dart';

import '../../helpers/colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_small_text.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfeild.dart';
import 'forgotpassword_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Customtext(
                    text: "Signup",
                    textcolor: Colors.black,
                    fontsize: 25.sp,
                    fontWeight: FontWeight.w600,
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
        
                  SizedBox(
                    height: 3.h,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Customtext(
                        text: "App Logo",
                        textcolor: Colors.black,
                        fontsize: 22,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 2.h,
                  ),
                  Customtext(
                    text: "Let’s Get It Started!",
                    textcolor: Colors.black,
                    fontsize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomTextField(
                    hintText: "First Name",
                    hintcolor: Colors.grey.shade200,
                    height: 55, textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  CustomTextField(
                    hintText: "Last Name",
                    hintcolor: Colors.grey.shade200,
                    height: 55, textInputType: TextInputType.text,
        
                  ),
                  SizedBox(height: 2.h,),
                  CustomTextField(
                    hintText: "Email",
                    hintcolor: Colors.grey.shade200,
                    height: 55, textInputType: TextInputType.emailAddress,
        
                  ),
                  SizedBox(height: 2.h,),
                  CustomTextField(
                    hintText: "Password",
                    hintcolor: Colors.grey.shade200,
                    height: 55,
                    suffixicon: Icons.remove_red_eye_outlined, textInputType: TextInputType.visiblePassword,
                  ),
                  // Align(
                  //     alignment: Alignment.centerRight,
                  //     child: TextButton(
                  //         onPressed: () {Get.to(ForgotPassword());},
                  //         child: Text(
                  //           "Forgot Password?",
                  //           style: TextStyle(color: Colors.black),
                  //         ))),
                  SizedBox(
                    height: 2.h,
                  ),
                  CustomButton(
                      text: "Sign up",
                      color: AppColor,
                      textcolor: Colors.white,
                      height: 55,
                      ontap: () {
                        Get.to(HomeScreen());
                      }),
        
        
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        text: "Facebook",
                        color: Color(0xff365194),
                        textcolor: Colors.white,
                        ontap: () {},
                        width: 180,
                        height: 55,
                      ),
                      CustomButton(
                        text: "Google",
                        color: Color(0xff000000),
                        textcolor: Colors.white,
                        ontap: () {},
                        width: 180,
                        height: 55,
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(text: "Don’t have an account", color: Colors.grey,fontWeight: FontWeight.w600,fontsize: 20,),
                      VerticalDivider(),
                      TextButton(onPressed: (){
                        Get.back();
                      }, child: Text("Login",style: TextStyle(color: AppColor),))
        
                    ],)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
