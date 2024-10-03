import 'package:flutter/material.dart';
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
            SizedBox(height: MediaQuery.of(context).size.width / 5),
            SvgPicture.asset('images/success.svg',width: 100, height: 100),
            const Text('Таны бүртгэл амжилттай хийгдлээ', textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontFamily: 'Roboto-Regular')),
            Container(
              width: double.infinity,
              height: 52,
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: (){},
                child: const Text('Нэтврэх', style: TextStyle(color: Color(0xffffffff)),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff182247),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),),
            ),
          ],
      ),
    );
  }
}
