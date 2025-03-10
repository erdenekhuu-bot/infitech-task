import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/pages/Maps.dart';
import 'package:task/Colors/custom_colors.dart';

class Profilefinished extends StatefulWidget {
  const Profilefinished({super.key});

  @override
  State<Profilefinished> createState() => _ProfilefinishedState();
}

class _ProfilefinishedState extends State<Profilefinished> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_colors.color_x1,
        title: const Text('Захиалгын дэлгэрэнгүй', style: TextStyle(fontFamily: 'Roboto-Medium')),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            SizedBox(height: MediaQuery.of(context).size.width / 9),
            Center(
              child: SvgPicture.asset('images/success.svg',width: 100, height: 100),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Таны бүртгэл амжилттай хийгдлээ', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular')),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xff4ADE80).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SvgPicture.asset('images/Info_Circle.svg'),
                   Container(
                     padding: const EdgeInsets.symmetric(vertical: 8),
                     width: MediaQuery.of(context).size.width - 100,
                     child: const Text('Таны бүртгэл 24-48 цагийн дотор баталгаажиж аялал хийх боломжтой болно.', style: TextStyle(fontFamily: 'Roboto-Regular', fontSize: 10, color: custom_colors.color_x8)),
                   )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 52,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Maps(key: UniqueKey())));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: custom_colors.color_x5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                child: const Text('Нэвтрэх', style: TextStyle(color: custom_colors.color_x1, fontFamily: 'Inter-Bold'))),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: const Text('Дэлгэрэнгүй мэдээлэл авах бол доорх дугаараар холбогдоно уу.', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Roboto-Regular')),
            ),
            const Text('7777-8888', style: TextStyle(fontFamily: 'Roboto-Bold'), textAlign: TextAlign.center)
          ],
      ),
    );
  }
}
