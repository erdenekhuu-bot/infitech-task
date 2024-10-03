import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Components/CustomDialog.dart';
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
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(fontSize: 16, fontFamily: 'Inter', fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: SvgPicture.asset('images/checkeds.svg', width: 20, height: 20),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: 280,
                child: Text(
                  widget.contet,
                  style: const TextStyle(),
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
                child: Store.imageCamera == null
                    ? Container(
                         width: 40,
                         height: 40,
                           child: Center(
                             child: SvgPicture.asset('images/uploads.svg', width: 20, height: 20),
                           ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: const Color(0xffE7E7E7)
                          ),
                      )
                    : GestureDetector(
                          onTap: (){},
                          child: SvgPicture.asset('images/delete.svg', width: 40, height: 40)
                      ),
                ),
            ],
          ),
          Store.imageCamera == null
              ? const SizedBox.shrink()
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
