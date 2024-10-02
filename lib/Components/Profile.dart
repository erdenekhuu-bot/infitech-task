import 'package:flutter/material.dart';
import 'package:task/Components/CustomDialog.dart';
import 'dart:io';
import 'package:task/Components/Store.dart';

class Profile extends StatefulWidget {
  final String title;
  final String contet;

  Profile({super.key, required this.title, required this.contet});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _ontap = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: 280,
                child: Text(
                  widget.contet,
                  style: TextStyle(),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog();
                    },
                  );
                },
                child: _ontap
                    ? Container(
                  width: 36,
                  height: 36,
                  child: Center(
                    child: Image.asset('images/upload.jpg'),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36 / 2),
                    color: const Color(0xff686868).withOpacity(0.3),
                  ),
                )
                    : Container(
                  width: 36,
                  height: 36,
                  child: Center(
                    child: Image.asset('images/checked.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Store.imageCamera == null
              ? SizedBox.shrink()
              : Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0), // Adjust radius here
              image: DecorationImage(
                image: FileImage(Store.imageCamera!),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: 150,
          ),

        ],
      ),
    );
  }
}
