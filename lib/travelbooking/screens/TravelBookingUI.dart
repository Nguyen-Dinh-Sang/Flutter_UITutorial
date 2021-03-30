import 'package:flutter/material.dart';
import 'package:flutter_ui/DrawerMenu.dart';
import 'package:flutter_ui/travelbooking/constants/ColorConstant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/travelbooking/widgets/BottomNavigationTravelkuy.dart';

class TravelBookingUI extends StatefulWidget {
  @override
  _TravelBookingUIState createState() => _TravelBookingUIState();
}

class _TravelBookingUIState extends State<TravelBookingUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      drawer: DrawerMenu(),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationTravelkuy(),
    );
  }
}
