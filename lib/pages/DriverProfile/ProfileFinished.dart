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
            Center(
              child: SvgPicture.asset('images/success.svg', width: 120, height: 120),
            )
          ],
      ),
    );
  }
}
