import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tourism/views/screens/verification_screen.dart';
import 'package:tourism/widgets/custom_small_text.dart';

import '../../helpers/colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_textfeild.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          Align(
            alignment: Alignment.topLeft,
            child: Customtext(
                  text: "Forgot Password",
                  textcolor: Colors.black,
                  fontsize: 25,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.topLeft,
            child: Customtext(
                  text: "Enter your email to recover your password ",
                  textcolor: Colors.black,
                  fontsize: 13,
                  fontWeight: FontWeight.w400,
                ),
          ),
          SizedBox(height: 80,),
          CustomTextField(
            hintText: "Email",
            hintcolor: Colors.grey.shade400,
            height: 55, textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 80,),
          CustomButton(
              text: "Login",
              color: AppColor,
              textcolor: Colors.white,
              height: 55,
              ontap: () {Get.to(Verification());}),
        ],),
      ),
    );
  }
}
