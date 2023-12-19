import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';

import '../../widgets/custom_png_image.dart';
import '../../widgets/custom_text.dart';
import 'add_new_place2.dart';

class AddNewPlace extends StatefulWidget {
  const AddNewPlace({super.key});

  @override
  State<AddNewPlace> createState() => _AddNewPlaceState();
}

class _AddNewPlaceState extends State<AddNewPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
        title: Text("Select Category"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
        return Column(children: [
          SizedBox(height: 2.h,),
          GestureDetector(
            onTap: (){Get.to(AddNewPlace2());},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [BoxShadow(blurRadius: 40, color: Colors.grey)]),
              height: 10.h,
              child: Row(
                children: [
                  PngImage(
                    name: "img_10",
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Customtext(
                        text: "Hotels & Restaurants",
                        textcolor: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontsize: 16,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: AppColor,
                        size: 20,
                      ).paddingOnly(left: 25.w)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],).marginAll(15);
      },),
    );
  }
}
