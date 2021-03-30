import 'package:flutter/material.dart';
import 'package:flutter_ui/ProfileUI.dart';

void main() {
  runApp(MaterialApp(
    // bỏ chữ debug
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
      ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileUI(),
    );
  }
}
