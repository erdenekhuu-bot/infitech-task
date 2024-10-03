import 'package:flutter/material.dart';
import 'package:task/Components/CheckList.dart';
import 'package:task/pages/DriverProfile/ProfileFinished.dart';


class Help extends StatefulWidget {
  final String? title;
  final int? forward;
  Help({super.key, this.title, this.forward});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {

  final Help_form_ley = GlobalKey<FormState>();

  final TextEditingController controllers = new TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllers.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          title: Text('${widget.title}', style: const TextStyle(fontFamily: 'Roboto-Medium', fontSize: 14)),
          centerTitle: true,
          leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Form(
            key: Help_form_ley,
            child: ListView(
              padding: const EdgeInsets.all(30),
              children: [
                  if(widget.forward == 0)
                     ...[
                       Checklist(title: 'Машины төрөл сонгох', controller: controllers),
                       Checklist(title: 'Машины марк сонгох', controller: controllers),
                       Checklist(title: 'Машины өнгө сонгох', controller: controllers),
                       Checklist(title: 'Улсын дугаар', controller: controllers),
                     ]
                  else
                      ...[
                        Checklist(title: 'Банк сонгох', controller: controllers),
                        Checklist(title: 'Данс эзэмшигчийн нэр', controller: controllers),
                        Checklist(title: 'Дансны дугаар', controller: controllers),
                      ],
                SizedBox(height: MediaQuery.of(context).size.width * 0.5),
                Container(
                  height: 52,
                  margin: null,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profilefinished()));
                    },
                    child: const Text('Илгээх', style: TextStyle(color: const Color(0xffffffff)),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff182247),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
                    ),
                  ),
                ),
              ]
            )
        ),
    );
  }
}
