import 'package:flutter/material.dart';
import 'package:task/pages/login/Login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const Login()));
    });
    return Scaffold(
         body: Container(
           width: double.infinity,
           height: double.infinity,
           decoration: const BoxDecoration(
             image: DecorationImage(image: AssetImage('images/SplashScreen.jpg'), fit: BoxFit.cover)
           ),
         ),
    );
  }
}
