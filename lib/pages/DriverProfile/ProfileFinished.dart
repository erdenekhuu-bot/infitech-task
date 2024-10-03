import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        backgroundColor: const Color(0xffffffffff),
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
                     child: const Text('Таны бүртгэл 24-48 цагийн дотор баталгаажиж аялал хийх боломжтой болно.', style: TextStyle(fontFamily: 'Roboto-Regular', fontSize: 10, color: Color(0xff4AAF57))),
                   )
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 52,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: (){},
                child: const Text('Нэтврэх', style: TextStyle(color: Color(0xffffffff), fontFamily: 'Inter-Bold')),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff182247),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),),
            ),
          ],
      ),
    );
  }
}
