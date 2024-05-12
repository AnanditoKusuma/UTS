import 'package:flutter/material.dart';
import 'package:plants_shop/constants.dart';
import 'package:plants_shop/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plants Shop',
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        fontFamily: kfontFamily,
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
