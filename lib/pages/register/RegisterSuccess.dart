import 'package:flutter/material.dart';

class Registersuccess extends StatefulWidget {
  const Registersuccess({super.key});

  @override
  State<Registersuccess> createState() => _RegistersuccessState();
}

class _RegistersuccessState extends State<Registersuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Захиалгын дэлгэрэнгүй'),
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
