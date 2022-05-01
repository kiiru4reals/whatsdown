import 'package:flutter/material.dart';
import 'package:whatsdown/consts/colors.dart';
import 'package:whatsdown/responsive/responsive_layout.dart';
import 'package:whatsdown/screens/mobile_screen_layout.dart';
import 'package:whatsdown/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsdown! | Looks like WhatsApp. I promise :)',
      theme: ThemeData.dark().copyWith(
        backgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(webScreenLayout: WebScreenLayout(), mobileScreenLayout: MobileScreenLayout()),
    );
  }
}