import 'package:flutter/material.dart';
import 'package:task/Components/Profile.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({super.key});

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffffff),
        title: const Text('Жолоочийн мэдээлэл бөглөх', style: TextStyle(fontFamily: 'Inter-Medium')),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
            Profile(title: 'Жолооны үнэмлэх', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
            Profile(title: 'Жолооны үнэмлэх', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
            Profile(title: 'Гэрчилгээ', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
            Profile(title: 'Гэрчилгээ', contet: 'Та жолооны үнэмлэхний урд талын зургаа оруулна уу',),
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
