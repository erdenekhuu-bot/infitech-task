import 'package:flutter/material.dart';
import 'package:task/Components/Profile.dart';
import 'package:task/Components/Store.dart';
import 'package:task/pages/DriverProfile/Help/Help.dart';
import 'package:task/Colors/custom_colors.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({super.key});

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: custom_colors.color_x1,
      appBar: AppBar(
        backgroundColor: custom_colors.color_x1,
        title: const Text('Жолоочийн мэдээлэл бөглөх', style: TextStyle(fontFamily: 'Inter-Medium')),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
            const Profile(title: 'Жолооны үнэмлэх', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
            const Profile(title: 'Жолооны үнэмлэх', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
            const Profile(title: 'Гэрчилгээ', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
            const Profile(title: 'Гэрчилгээ', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 7),
              child: const Text('* Заавал мэдээлэл илгээх шаардлагатай', style: TextStyle(color: custom_colors.color_x9)),
            ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 3,
          ),
          Container(
            width: double.infinity,
            height: 52,
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: Store.imageCamera != null ? (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Help(title: 'Машины мэдээлэл өгөх', forward: 0)));
              } : null,
              style: ElevatedButton.styleFrom(
                  backgroundColor: custom_colors.color_x5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              child: const Text('Үргэлжлүүлэх', style: TextStyle(color: custom_colors.color_x1)),
            ),
          ),
        ],
      ),
    );
  }
}
