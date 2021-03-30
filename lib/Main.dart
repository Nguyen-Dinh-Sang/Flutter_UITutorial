import 'package:flutter/material.dart';
import 'package:flutter_ui/ProfileUI.dart';

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
      },
    );
  }
}
