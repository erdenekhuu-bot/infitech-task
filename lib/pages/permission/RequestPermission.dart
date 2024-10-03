import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:task/pages/DriverProfile/DriverDocuments/DriverProfile.dart';
import 'package:task/Colors/custom_colors.dart';


class RequestPermission extends StatefulWidget {
  const RequestPermission({super.key});

  @override
  State<RequestPermission> createState() => _RequestPermissionState();
}

class _RequestPermissionState extends State<RequestPermission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: custom_colors.color_x1,
       body: ListView(
         padding: const EdgeInsets.symmetric(horizontal: 30),
         children: [
           SizedBox(
             child: null,
             height: MediaQuery.of(context).size.height * 0.25,
           ),
           const Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(
                 child: Text('Байршил зөвшөөрөх',style: TextStyle(fontFamily: 'Inter-Bold', fontSize: 22)),
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 margin: const EdgeInsets.symmetric(vertical: 15),
                 width: 300,
                 child: const Text('QGO апп нь газрын зураг, хаяг, жолоочийн байршлыг газрын зураг дээр харуулахын тулд систем дээр байршил тогтоох эрх шаарддаг тул ALLOW дээр дарна уу.', textAlign: TextAlign.center, style: TextStyle(color: custom_colors.color_x4)),
               ),
             ],
           ),
           const SizedBox(child: null, height: 70),
           Container(
             width: double.infinity,
             height: 52,
             margin: const EdgeInsets.symmetric(vertical: 15),
             child: ElevatedButton(
               onPressed: () async {
                 const permission = Permission.notification;
                 try {
                   if(await permission.status.isDenied){
                     await permission.request();
                   }
                 } catch(error){
                    print(error);
                 }
               },
               style: ElevatedButton.styleFrom(
                   backgroundColor: custom_colors.color_x5,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
               child: const Text('Push notification', style: TextStyle(color: custom_colors.color_x1)),
             ),
           ),
           Container(
             width: double.infinity,
             height: 52,
             margin: const EdgeInsets.symmetric(vertical: 5),
             child: ElevatedButton(
               onPressed: () async {
                 const permission = Permission.accessMediaLocation;
                 try {
                   if(await permission.status.isDenied){
                     await permission.request();
                   }
                 } catch(error){
                   null;
                 }

               },
               style: ElevatedButton.styleFrom(
                   backgroundColor: custom_colors.color_x5,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
               child: const Text('Precise Location', style: TextStyle(color: custom_colors.color_x1)),
             ),
           ),
           Container(
             width: double.infinity,
             height: 52,
             margin: const EdgeInsets.symmetric(vertical: 15),
             child: ElevatedButton(
               onPressed: () async {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const DriverProfile()));
               },
               style: ElevatedButton.styleFrom(
                   backgroundColor: custom_colors.color_x5,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
               child: const Text('Background location for driver', style: TextStyle(color: custom_colors.color_x1)),
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 margin: const EdgeInsets.symmetric(vertical: 10),
                 child: const Opacity(opacity: 0.5, child: Text('ЭСВЭЛ', style: TextStyle(fontSize: 13, fontFamily: 'Inter-Semi-Bold')),),
               )
             ],
           ),
           Container(
             width: double.infinity,
             height: 52,
             margin: const EdgeInsets.symmetric(vertical: 15),
             child: ElevatedButton(
               onPressed: (){
                 Navigator.of(context).pop();
               },
               style: ElevatedButton.styleFrom(
                   backgroundColor: custom_colors.color_x6,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
               child: const Text('Татгалзах', style: TextStyle(color: custom_colors.color_x5, fontWeight: FontWeight.bold)),
             ),
           ),
         ],
       ),
    );
  }
}
