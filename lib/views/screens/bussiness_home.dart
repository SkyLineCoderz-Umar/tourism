import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tourism/helpers/colors.dart';

import '../layouts/layout_boking.dart';
import '../layouts/layout_places.dart';
import '../layouts/layout_profile.dart';

class BussinessHome extends StatefulWidget {
  @override
  _BussinessHomeState createState() => _BussinessHomeState();
}

class _BussinessHomeState extends State<BussinessHome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  List<Widget> _widgetOptions = <Widget>[
    LayoutBooking(),
    LayoutPlaces(),
    LayoutProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: AppColor,
              hoverColor: AppColor,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: AppColor,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home_filled,
                  text: 'Booking',
                ),
                GButton(
                  icon:Icons.place_rounded,
                  text: 'Places',
                ),
                GButton(
                  icon: Icons.person_off_sharp,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}