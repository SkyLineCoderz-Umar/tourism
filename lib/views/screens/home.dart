import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/widgets/custom_button.dart';
import 'package:tourism/widgets/custom_png_image.dart';

import '../../helpers/colors.dart';
import '../../widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        color: Colors.white,
        child: CustomButton(
          text: 'Book Now',
          color: AppColor,
          textcolor: Colors.white,
          ontap: () {},
          height: 45,
        ).marginSymmetric(horizontal: 40, vertical: 25),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 20.h,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 50)],
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/img_5.png",
                    )),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ).marginOnly(left: 20),
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.edit_outlined,
                          color: AppColor,
                          size: 30,
                        ),
                      ).marginOnly(top: 10),
                    ],
                  ),
                ],
              ).marginAll(20),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Customtext(
                    text: 'Grand Royale',
                    textcolor: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontsize: 20,
                  ),
                  Customtext(
                    text: 'Park Hotel',
                    textcolor: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontsize: 20,
                  ),
                ],
              ),
              subtitle: Row(
                children: [
                  Text(
                    "Location Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.location_on,
                    color: AppColor,
                    size: 18,
                  ),
                  Text(
                    "2 miles away",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              trailing: Column(
                children: [
                  Customtext(
                    text: "\$ 200",
                    textcolor: AppColor,
                    fontWeight: FontWeight.w800,
                    fontsize: 12,
                  ),
                  Customtext(
                    text: "per Night",
                    textcolor: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontsize: 12,
                  ),
                ],
              ).paddingOnly(top: 12),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Customtext(
                    text: "Summry",
                    textcolor: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontsize: 16,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Customtext(
                    text:
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia.",
                    textcolor: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontsize: 12,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    height: 20.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 30, color: Colors.grey)
                      ],
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Overall Rating"),
                          subtitle: RatingBar.builder(
                            itemSize: 20,
                            minRating: 0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) => setState(() {
                              this.rating = rating;
                            }),
                          ),
                          leading: Text(
                            "$rating",
                            style: TextStyle(fontSize: 20, color: AppColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Customtext(
                        text: "Photos",
                        textcolor: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontsize: 16,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Customtext(
                          text: "Veiw All",
                          textcolor: AppColor,
                          fontWeight: FontWeight.w500,
                          fontsize: 16,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 100,
                    child: Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              buildCard(),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Customtext(
                        text: "Reviews",
                        textcolor: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontsize: 16,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Customtext(
                          text: "Veiw All",
                          textcolor: AppColor,
                          fontWeight: FontWeight.w500,
                          fontsize: 16,
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  ListTile(
                    leading: PngImage(name: "img27"),
                    title: Customtext(
                      text: 'Alex Jack',
                      textcolor: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                    ),
                    subtitle: Customtext(
                      text: '21 June, 2021 02:05 PM',
                      textcolor: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontsize: 12,
                    ),
                    trailing: RatingBar.builder(
                      itemSize: 20,
                      minRating: 0,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                    ),
                  ),
                  Customtext(
                      text:
                          "Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature",
                      textcolor: Colors.black),
                  Divider(),
                  ListTile(
                    leading: PngImage(name: "img27"),
                    title: Customtext(
                      text: 'Elsa Jean',
                      textcolor: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                    ),
                    subtitle: Customtext(
                      text: '21 June, 2021 02:05 PM',
                      textcolor: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontsize: 12,
                    ),
                    trailing: RatingBar.builder(
                      itemSize: 20,
                      minRating: 0,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) => setState(() {
                        this.rating = rating;
                      }),
                    ),
                  ),
                  Customtext(
                      text:
                          "Review text popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature",
                      textcolor: Colors.black),
                ],
              ).marginAll(20),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCard() => Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage("assets/images/img_10.png"),
              fit: BoxFit.cover)),
    );
