import 'package:flutter/material.dart';
import 'package:task/DriverProfile/DriverProfile.dart';
import 'package:task/login/Login.dart';
import 'package:task/register/Register.dart';
import 'package:task/splash/SplashScreen.dart';
import 'package:task/register/Verify.dart';
import 'package:task/location/AllowLocation.dart';

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
    print(MediaQuery.of(context).size.width);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xffffffff),
          body: Allowlocation(),
        ),
    );
  }
}
