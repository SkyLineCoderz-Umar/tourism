import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_png_image.dart';
import 'package:tourism/widgets/custom_svg_image.dart';
import 'package:tourism/widgets/custom_text.dart';

class AddNewPlace2 extends StatefulWidget {
  const AddNewPlace2({super.key});

  @override
  State<AddNewPlace2> createState() => _AddNewPlace2State();
}

class _AddNewPlace2State extends State<AddNewPlace2> {
  var value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: Text("Add New Place"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80.w,
              height: 15.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  PngImage(name: "img_14"),
                  SizedBox(
                    height: 2.h,
                  ),
                  Customtext(text: "Add images", textcolor: Colors.black)
                ],
              ).paddingAll(20),
            ).marginSymmetric(vertical: 30, horizontal: 35),
            SizedBox(
              height: 2.h,
            ),
            Customtext(
              text: "Add Details",
              textcolor: AppColor,
              fontsize: 15.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), //<-- SEE HERE
                  ),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  labelText: "Location Name",
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40.w,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black), //<-- SEE HERE
                      ),
                      labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                      labelText: "Price",
                    ),
                  ),
                ),
                Container(
                  width: 40.w,
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black), //<-- SEE HERE
                          ),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 20),
                          labelText: "Duration",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.black))),
                      value: value,
                      items: [
                        DropdownMenuItem(
                            value: "-1",
                            child: Text(
                              "Per Night",
                            )),
                        DropdownMenuItem(
                            value: "1",
                            child: Text(
                              "Per week",
                            )),
                        DropdownMenuItem(
                            value: "2",
                            child: Text(
                              "Per month",
                            )),
                        DropdownMenuItem(
                            value: "3",
                            child: Text(
                              "Per year",
                            )),
                      ],
                      onChanged: (v) {}),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), //<-- SEE HERE
                  ),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  labelText: "Avaliable Rooms",
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              height: 15.h,
              child: TextField(
                expands: true,
                maxLines: null,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "text here",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black), //<-- SEE HERE
                  ),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  labelText: "Summary",
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            CustomButton(
              text: "Upload",
              color: AppColor,
              textcolor: Colors.white,
              ontap: () {
                showDialog(
                    context: context,
                    builder: (context){
                      return Container(
                        child: AlertDialog(
                          title: PngImage(name: "img22",),
                        ),
                      );
                    });
              },
              height: 55,
              width: 80.w,
            ).marginAll(12),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
