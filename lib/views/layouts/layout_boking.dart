import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:tourism/views/layouts/pending_layout.dart';


import '../../helpers/colors.dart';
import 'active_layout.dart';
import 'finished_layout.dart';

class LayoutBooking extends StatelessWidget {
  List<Widget> bookingLayouts = [
    LayoutActive(),
    LayoutPending(),
    LayoutFinished()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Booking",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 25),),
            actions: [Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.search,color: AppColor,),
            )],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: Container(
                height: 60.sp,
                padding: EdgeInsets.all(10.sp),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(30)
                ),
                // color: Colors.red,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                      color: AppColor,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  unselectedLabelStyle: TextStyle(color: Colors.grey),

                  // indicatorPadding: EdgeInsets.symmetric(vertical:-7,horizontal: 4),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Text("Active"),
                    Text("Pending"),
                    Text("Finished")
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: bookingLayouts,
          ),
        ));
  }
}