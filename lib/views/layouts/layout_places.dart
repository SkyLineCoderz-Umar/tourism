import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';
import 'package:tourism/helpers/colors.dart';
import 'package:tourism/widgets/custom_png_image.dart';
import 'package:tourism/widgets/custom_text.dart';

import '../screens/add_new_place.dart';
import '../screens/home.dart';

class LayoutPlaces extends StatefulWidget {
  const LayoutPlaces({super.key});

  @override
  State<LayoutPlaces> createState() => _LayoutPlacesState();
}

class _LayoutPlacesState extends State<LayoutPlaces> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNewPlace());
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: AppColor,
        shape: CircleBorder(),
      ),
      appBar: AppBar(
        title: Text(
          "My Places",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          Icon(
            Icons.search,
            color: AppColor,
          ).marginAll(15),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(HomeScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 50),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage("assets/images/img_7.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      ListTile(
                        title: Customtext(
                          text: 'Grand Royle Hotel',
                          textcolor: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontsize: 18,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Customtext(
                              text: 'Location Name',
                              textcolor: Colors.grey,
                              fontsize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            RatingBar.builder(
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
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Customtext(
                              text: "200",
                              textcolor: AppColor,
                              fontWeight: FontWeight.w600,
                              fontsize: 12,
                            ),
                            Customtext(
                              text: "per night",
                              textcolor: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontsize: 12,
                            ),
                          ],
                        ).paddingOnly(top: 12),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ).paddingAll(20);
        },
      ),
    );
  }
}
