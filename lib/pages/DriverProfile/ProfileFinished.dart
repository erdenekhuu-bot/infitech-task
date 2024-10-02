import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
        title: const Text('Захиалгын дэлгэрэнгүй', style: TextStyle(fontFamily: 'Inter-Medium')),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(

      ),
    );
  }
}
