import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../../helpers/colors.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 4.h,),
          Container(
            height: 10.h,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 40, color: Colors.grey)
            ]),
            child: ListTile(
              title: Text(
                "Review",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              subtitle:Text(
                "Alex Jack give you a review",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.account_balance_wallet_rounded,
                color: AppColor,
                size: 20,
              ),
            )
          ).marginAll(14),Container(
            height: 10.h,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 40, color: Colors.grey)
            ]),
            child: ListTile(
              title: Text(
                "Booking",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              subtitle:Text(
                "You have a new booking from Alex Jack on 07 Dec 2021.",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(
                Icons.account_balance_wallet_rounded,
                color: AppColor,
                size: 20,
              ),
            )
          ).marginAll(14),
        ],
      ),
    );
  }
}
