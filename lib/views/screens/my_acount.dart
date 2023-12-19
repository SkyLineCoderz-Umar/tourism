import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/widgets/custom_png_image.dart';

class MyAcount extends StatefulWidget {
  const MyAcount({super.key});

  @override
  State<MyAcount> createState() => _MyAcountState();
}

class _MyAcountState extends State<MyAcount> {
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
          SizedBox(height: 5.h,),
          PngImage(name: "img_15"),
          SizedBox(height: 8.h,),
          ListTile(
            title: Text(
              "Name",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            subtitle: Text(
                "Atif Javed",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
            trailing:Text(
                "Edit",
                style: TextStyle(
                    color: AppColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12)),
          ).marginAll(12),
          Divider(),
          ListTile(
            title: Text(
              "Email",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            subtitle: Text(
                "abc123@gmail.com",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18)),
            trailing:Text(
                "Edit",
                style: TextStyle(
                    color: AppColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12)),
          ).marginAll(12),
          Divider(),

        ],
      )
    );
  }
}
