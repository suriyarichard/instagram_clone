import 'package:flutter/material.dart';
import 'responsive/responsive_layout_screen.dart';
import 'utils/colors.dart';
import 'responsive/mobile_screen_layout.dart';
import 'responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:mobileBackgroundColor,
      ),
      home:ResponsiveLayout(mobileScreenLayout:mobileScreenLayout(),webScreenLayout:webScreenLayout(),),
    );
  }
}