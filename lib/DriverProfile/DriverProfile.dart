import 'package:flutter/material.dart';
import 'package:task/Components/Profile.dart';
import 'dart:io';

class Driverprofile extends StatefulWidget {
  const Driverprofile({super.key});

  @override
  State<Driverprofile> createState() => _DriverprofileState();
}

class _DriverprofileState extends State<Driverprofile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffffff),
        title: const Text('Жолоочийн мэдээлэл бөглөх', style: TextStyle(fontFamily: 'Inter-Medium')),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
              ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 480),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                       for(int i=0; i<10; i++)
                         Profile(title: 'Жолооны үнэмлэх', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
                      ],
                    ),
                  ),
              ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              child: const Text('* Заавал мэдээлэл илгээх шаардлагатай', style: TextStyle(color: Color(0xffFF0000))),
            ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 3,
          ),
          Container(
            width: double.infinity,
            height: 52,
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(onPressed: null,
              child: const Text('Үргэлжлүүлэх', style: TextStyle(color: Color(0xffffffff)),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff182247),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
