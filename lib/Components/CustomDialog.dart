import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GestureDetector(
            onTap: ()  {
            },
            child: Container(
              width: double.infinity,
              height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: const Text('ТӨРӨЛ СОНГОХ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/camera.svg'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Зураг авах'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 2,
                    decoration: const BoxDecoration(
                      color: Color(0xffC8C8C8)
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/gallery.svg'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Зургийн сангаас оруулах'),
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: double.infinity,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: const Center(
                  child: Text(
                    'Болих',
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}