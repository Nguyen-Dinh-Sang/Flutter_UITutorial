import 'package:flutter/material.dart';
import 'package:flutter_ui/DashboardUI.dart';
import 'package:flutter_ui/ProfileUI.dart';
import 'package:flutter_ui/travel_booking/screens/TravelBookingUI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // bỏ chữ debug
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ProfileUI(),
        'Dashboard': (context) => DashboardUI(),
        'TravelBooking': (context) => TravelBookingUI(),
      },
    );
  }
}
