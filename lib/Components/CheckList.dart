import 'package:flutter/material.dart';


class Checklist extends StatefulWidget {
  final String? title;
  final TextEditingController? controller;
  Checklist({super.key, this.title, this.controller});

  @override
  State<Checklist> createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {

  bool trigger=false;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${widget.title}', style: const TextStyle(fontFamily: 'Roboto-Medium', fontSize: 12)),
        Container(
          height: 52,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: TextFormField(
            onChanged: (value){
                if(value.isNotEmpty){
                  // go trigger
                }
            },
            controller: widget.controller,
            maxLength: 8,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color(0xffF8F9FA),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(
                  fontFamily: 'Inter'),
              labelText: '',
              counterText: '',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            autofocus: false,
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
