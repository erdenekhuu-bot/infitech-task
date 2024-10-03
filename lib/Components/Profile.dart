import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/Components/Store.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profile extends StatefulWidget {
  final String title;
  final String contet;

  Profile({super.key, required this.title, required this.contet});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _ontap = false;


  //upload and show
  Widget imageUpload(BuildContext context){
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
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
                  GestureDetector(
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image = await picker.pickImage(source: ImageSource.camera);
                      if (image != null) {
                        setState(() {
                          Store.imageCamera=File(image.path);
                        });
                      }
                    },
                    child: Container(
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
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 2,
                    decoration: const BoxDecoration(
                        color: Color(0xffC8C8C8)
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        Store.imageGallery=File(image.path);
                      }
                    },
                    child: Container(
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
                    ),
                  )
                ],
              )
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
              Store.imageCamera != null ? Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: SvgPicture.asset('images/checkeds.svg', width: 20, height: 20),
                ),
              ) : const Text('')
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
                      return imageUpload(context);
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
                          onTap: (){
                            setState(() {
                              Store.imageCamera = null;
                            });
                          },
                          child: SvgPicture.asset('images/delete.svg', width: 40, height: 40)
                      ),
                ),
            ],
          ),
          Store.imageCamera == null
              ? const Text('')
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
