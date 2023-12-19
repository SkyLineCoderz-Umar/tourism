import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/views/screens/home.dart';
import 'package:tourism/views/screens/singup_screen.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_small_text.dart';
import 'package:tourism/widgets/custom_text.dart';
import 'package:tourism/widgets/custom_textfeild.dart';

import 'forgotpassword_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    text: "Login",
                    textcolor: Colors.black,
                    fontsize: 25,
                    fontWeight: FontWeight.w600,
                  )),
        
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
                    text: "Welcome back!",
                    textcolor: Colors.black,
                    fontsize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextField(
                    obscureText: true,
                    hintText: "Email",
                    hintcolor: Colors.grey.shade200,
                    height: 55.sp, textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 30.sp,),
                  CustomTextField(
                    obscureText: true,
                    hintText: "Password",
                    suffixicon: Icons.remove_red_eye_outlined,
                    hintcolor: Colors.grey.shade200,
                    height: 55.sp, textInputType: TextInputType.visiblePassword,
        
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {Get.to(ForgotPassword());},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.black),
                          ))),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomButton(
                      text: "Login",
                      color: AppColor,
                      textcolor: Colors.white,
                      height: 55,
                      ontap: () {
                        Get.to(HomeScreen());
                      }),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(children: [
                    Expanded(
                      child: Divider(
                        indent: 40,
                        endIndent: 5,
                      ),
                    ),
                    Text("or"),
                    Expanded(
                      child: Divider(
                        indent: 5,
                        endIndent: 40,
                      ),
                    ),
        
                  ]),
                  SizedBox(
                    height: 5.h,
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
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SmallText(text: "Don’t have an account", color: Colors.grey,fontWeight: FontWeight.w600,fontsize: 20,),
                     VerticalDivider(),
                    TextButton(onPressed: (){
                      Get.to(SignUpScreen());
                    }, child: Text("Singup",style: TextStyle(color: AppColor),))
        
                  ],)
                ],
              ),
        
        ),
      ),
    );
  }
}
