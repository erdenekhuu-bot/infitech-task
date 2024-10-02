import 'package:flutter/material.dart';
import 'package:task/pages/DriverProfile/DriverDocuments/DriverProfile.dart';
import 'package:task/pages/DriverProfile/ProfileFinished.dart';
import 'package:task/pages/login/Login.dart';
import 'package:task/pages/register/Register.dart';
import 'package:task/splash/SplashScreen.dart';
import 'package:task/pages/register/OTP.dart';
import 'package:task/pages/permission/RequestPermission.dart';
import 'package:task/pages/register/RegisterSuccess.dart';
import 'package:task/pages/Maps.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xffffffff),
          body: Profilefinished(),
        ),
    );
  }
}
