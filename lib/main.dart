import 'package:flutter/material.dart';
import 'package:task/Colors/custom_colors.dart';
import 'package:task/pages/DriverProfile/ProfileFinished.dart';
import 'package:task/pages/permission/RequestPermission.dart';
import 'package:task/pages/register/OTP.dart';
import 'package:task/pages/register/RegisterSuccess.dart';
import 'package:task/splash/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: custom_colors.color_x1,
          body: Splashscreen(),
        ),
    );
  }
}
