import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_png_image.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 3.h,),
            PngImage(name: "img_20"),
            SizedBox(
              height: 3.h,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "Old Password",
                  hintStyle:
                      TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ).marginAll(20),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "New Password",
                  hintStyle:
                      TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ).marginAll(20),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle:
                      TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black))),
            ).marginAll(20),
            SizedBox(
              height: 15.h,
            ),
            CustomButton(
              text: "Change Password",
              color: AppColor,
              textcolor: Colors.white,
              ontap: () {},
              width: 50.w,
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}
