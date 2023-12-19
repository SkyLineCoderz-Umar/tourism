import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_png_image.dart';
import 'package:tourism/widgets/custom_text.dart';

import 'booking_detail_success.dart';

class BookingDetail extends StatefulWidget {
  const BookingDetail({super.key});

  @override
  State<BookingDetail> createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        shadowColor: Colors.black,
        leading: IconButton(
          onPressed: () { Get.back(); }, icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 50)],
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/img_5.png",
                    )),
              ),
              child: Customtext(
                text: 'Grand Royle Hotel',
                textcolor: Colors.white,
                fontsize: 18,
                fontWeight: FontWeight.w600,
              ).paddingOnly(
                top: 16.h,
                left: 3.w,
              ),
            ).paddingAll(16),
            SizedBox(
              height: 3.h,
            ),
            ListTile(
              title: Customtext(
                text: 'Person Name',
                textcolor: Colors.black,
                fontWeight: FontWeight.w600,
                fontsize: 16,
              ),
              subtitle: Customtext(
                text: 'abc123@gmail.com',
                textcolor: Color(0xff717171),
                fontsize: 12,
                fontWeight: FontWeight.w300,
              ),
              trailing: PngImage(name: "img_6"),
            ),
            SizedBox(
              height: 2.h,
            ),
            ListTile(
              title: Customtext(
                text: 'Booking From',
                textcolor: Colors.grey,
                fontWeight: FontWeight.w600,
                fontsize: 18,
              ),
              trailing: Customtext(
                text: '26 Aug, 2021',
                textcolor: Colors.black,
                fontWeight: FontWeight.w400,
                fontsize: 16,
              ),
            ),
            Divider(),
            ListTile(
              title: Customtext(
                text: 'Booking To',
                textcolor: Colors.grey,
                fontWeight: FontWeight.w600,
                fontsize: 18,
              ),
              trailing: Customtext(
                text: '02 Sep, 2021',
                textcolor: Colors.black,
                fontWeight: FontWeight.w400,
                fontsize: 16,
              ),
            ),
            Divider(),
            ListTile(
              title: Customtext(
                text: 'Number of Rooms',
                textcolor: Colors.grey,
                fontWeight: FontWeight.w600,
                fontsize: 18,
              ),
              trailing: Customtext(
                text: '1',
                textcolor: Colors.black,
                fontWeight: FontWeight.w400,
                fontsize: 16,
              ),
            ),
            Divider(),
            ListTile(
              title: Customtext(
                text: 'Adults (age 15+)',
                textcolor: Colors.grey,
                fontWeight: FontWeight.w600,
                fontsize: 18,
              ),
              trailing: Customtext(
                text: '2',
                textcolor: Colors.black,
                fontWeight: FontWeight.w400,
                fontsize: 16,
              ),
            ),
            Divider(),
            ListTile(
              title: Customtext(
                text: 'Children (age 0 to 15)',
                textcolor: Colors.grey,
                fontWeight: FontWeight.w600,
                fontsize: 18,
              ),
              trailing: Customtext(
                text: '0',
                textcolor: Colors.black,
                fontWeight: FontWeight.w400,
                fontsize: 16,
              ),
            ),
            Divider(),
            SizedBox(height: 2.h,),
        
            CustomButton(
                width: 70.w,
                text: "Confirm Booking",
                color: AppColor,
                textcolor: Colors.white,
                ontap: () {
                  showDialog(
                      context: context,
                      builder: (contex){
                        return Container(
                          child: AlertDialog(
                            title: Text("Decline Booking"),
                            titleTextStyle: TextStyle(color: AppColor,fontWeight: FontWeight.w600,fontSize: 20),
                            titlePadding: EdgeInsets.only(left: 20.w,top: 2.h),
                            content: SizedBox(
                              height: 15.h,
                              width: 100.w,
                              child: TextField(
                                expands: true,
                                maxLines: null,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "text here",
                                  hintTextDirection:TextDirection.ltr,
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black), //<-- SEE HERE
                                  ),
                                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                                  labelText: "Reason",
                                ),
                              ),
                            ),
                            actions: [
                              CustomButton(text: "Submit", color: AppColor, textcolor: Colors.white, ontap: (){Get.to(BookingSuccess());},height: 55,width: 50.w,),

                            ],
                            actionsAlignment: MainAxisAlignment.center,
                          ),
                        );
                      });
                }),
            SizedBox(height: 2.h,),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side:BorderSide(color: AppColor,),
                  padding: EdgeInsets.symmetric(horizontal: 130)
                ),
                child: Text(
                  'Decline',
                  style: TextStyle(color: AppColor),
                )
            )
          ],
        ),
      ),
    );
  }
}
