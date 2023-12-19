import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../../helpers/colors.dart';
import 'change_password.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool inSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
        title: Text("My Acount"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 3.h,),
          ListTile(
            leading: Icon(Icons.notifications_active_outlined,color: AppColor,size: 30,),
            title: Text(
              "Notification",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),

            trailing:Switch(

              activeColor: Colors.green,
              value: inSwitched, onChanged: (value) {
              setState(() {
                inSwitched=value;
              });
            },

            ),
          ).marginAll(12),
          Divider(color: Colors.grey,),
          ListTile(
            onTap: (){Get.to(ChangePassword());},
            leading: Icon(Icons.password_outlined,color: AppColor,size: 30,),
            title: Text(
              "Change Password",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),

          ).marginAll(12),
          Divider(),
          ListTile(
            leading: Icon(Icons.quick_contacts_dialer_outlined,color: AppColor,size: 30,),
            title: Text(
              "Terms and Conditions",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),

          ).marginAll(12),
          Divider(),
          ListTile(
            leading: Icon(Icons.login,color: AppColor,size: 30,),
            title: Text(
              "Logout",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
            ),

          ).marginAll(12),
          Divider(),

        ],
      ),
    );
  }
}
