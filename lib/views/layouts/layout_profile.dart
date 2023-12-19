import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/views/screens/my_ratting.dart';
import 'package:tourism/widgets/custom_text.dart';

import '../screens/help.dart';
import '../screens/my_acount.dart';
import '../screens/notification.dart';
import '../screens/setting.dart';

class LayoutProfile extends StatefulWidget {
  const LayoutProfile({super.key});

  @override
  State<LayoutProfile> createState() => _LayoutProfileState();
}

class _LayoutProfileState extends State<LayoutProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  height: 6.h,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(blurRadius: 40, color: Colors.grey)
                  ]),
                  child: ListTile(
                    onTap: (){Get.to(MyAcount());},
                    leading: Icon(
                      Icons.account_circle_outlined,
                      color: AppColor,
                    ),
                    title: Text(
                      "My Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Container(
                  height: 6.h,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(blurRadius: 40, color: Colors.grey)
                  ]),
                  child: ListTile(
                    onTap: (){Get.to(Setting());},
                    leading: Icon(
                      Icons.settings,
                      color: AppColor,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Container(
                  height: 6.h,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(blurRadius: 40, color: Colors.grey)
                  ]),
                  child: ListTile(
                    onTap: (){
                      Get.to(MyRatting());
                    },
                    leading: Icon(
                      Icons.generating_tokens_outlined,
                      color: AppColor,
                    ),
                    title: Text(
                      "My Ratings",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(height: 3.h,),
                Container(
                  height: 6.h,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(blurRadius: 40, color: Colors.grey)
                  ]),
                  child: ListTile(
                    onTap: (){Get.to(Help());},
                    leading: Icon(
                      Icons.help_outline,
                      color: AppColor,
                    ),
                    title: Text(
                      "Help",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ).paddingAll(17),
          ),
          SizedBox(height: 3.h,),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColor),
            child: Column(
              children: [
                IconButton(
                  color: Colors.black, onPressed: () {Get.to(NotificationSetting());  }, icon: Icon(Icons.notification_add,),
                ).paddingOnly(top: 5.h, left: 80.w),
                Customtext(
                  text: "App Logo",
                  textcolor: Colors.black,
                  fontsize: 25,
                  fontWeight: FontWeight.w600,
                ).paddingOnly(top: 5.h)
              ],
            ),
          ),
          Positioned(
              top: 24.h,
              left: 16,
              child: ClipRRect(
                child: Image.asset("assets/images/img_16.png"),
              ))
        ],
      ),
    );
  }
}
