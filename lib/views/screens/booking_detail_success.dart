import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import '../../helpers/colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_png_image.dart';
import '../../widgets/custom_text.dart';

class BookingSuccess extends StatefulWidget {
  const BookingSuccess({super.key});

  @override
  State<BookingSuccess> createState() => _BookingSuccessState();
}

class _BookingSuccessState extends State<BookingSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Detail"),
        centerTitle: true,
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
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
