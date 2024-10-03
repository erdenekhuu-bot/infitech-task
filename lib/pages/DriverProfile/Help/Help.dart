import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HelpBank extends StatefulWidget {
  const HelpBank({super.key});

  @override
  State<HelpBank> createState() => _HelpBankState();
}

class _HelpBankState extends State<HelpBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            child: ListView(
              children: [

              ],
            )
        )
    );
  }
}

class HelpCar extends StatefulWidget {
  const HelpCar({super.key});

  @override
  State<HelpCar> createState() => _HelpCarState();
}

class _HelpCarState extends State<HelpCar> {

  final helpcar_form_ley = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Машины мэдээлэл өгөх', style: TextStyle(fontFamily: 'Roboto-Medium', fontSize: 14)),
          centerTitle: true,
          leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Form(
            key: helpcar_form_ley,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                  Text('Машины төрөл сонгох', style: TextStyle(fontFamily: 'Roboto-Medium', fontSize: 10)),
                  TextFormField()
              ]
            )
        )
    );
  }
}
