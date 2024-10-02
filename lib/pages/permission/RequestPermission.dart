import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class RequestPermission extends StatefulWidget {
  const RequestPermission({super.key});

  @override
  State<RequestPermission> createState() => _RequestPermissionState();
}

class _RequestPermissionState extends State<RequestPermission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
         padding: const EdgeInsets.symmetric(horizontal: 30),
         children: [
           SizedBox(
             child: null,
             height: MediaQuery.of(context).size.height * 0.2,
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
                 child: const Text('QGO апп нь газрын зураг, хаяг, жолоочийн байршлыг газрын зураг дээр харуулахын тулд систем дээр байршил тогтоох эрх шаарддаг тул ALLOW дээр дарна уу.', textAlign: TextAlign.center,),
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
                 final permission = Permission.notification;
                 try {
                   if(await permission.status.isDenied){
                     await permission.request();
                   }
                 } catch(error){
                    print(error);
                 }
               },
               child: const Text('Push notification', style: TextStyle(color: Color(0xffffffff)),),
               style: ElevatedButton.styleFrom(
                   backgroundColor: const Color(0xff182247),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
             ),
           ),
           Container(
             width: double.infinity,
             height: 52,
             margin: const EdgeInsets.symmetric(vertical: 15),
             child: ElevatedButton(
               onPressed: () async {
                 final permission = Permission.accessMediaLocation;
                 try {
                   if(await permission.status.isDenied){
                     await permission.request();
                   }
                 } catch(error){
                   null;
                 }
               },
               child: const Text('Precise Location', style: TextStyle(color: Color(0xffffffff)),),
               style: ElevatedButton.styleFrom(
                   backgroundColor: const Color(0xff182247),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
             ),
           ),
           Container(
             width: double.infinity,
             height: 52,
             margin: const EdgeInsets.symmetric(vertical: 15),
             child: ElevatedButton(
               onPressed: () async {
               },
               child: const Text('Background location for driver', style: TextStyle(color: Color(0xffffffff)),),
               style: ElevatedButton.styleFrom(
                   backgroundColor: const Color(0xff182247),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
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
             child: ElevatedButton(onPressed: (){},
               child: const Text('Татгалзах', style: TextStyle(color: Color(0xff182247), fontWeight: FontWeight.bold)),
               style: ElevatedButton.styleFrom(
                   backgroundColor: const Color(0xffF8F9FA),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
             ),
           ),
         ],
       ),
    );
  }
}
