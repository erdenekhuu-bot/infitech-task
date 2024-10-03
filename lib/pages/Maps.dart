import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mapController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setCustomMarker();
  }

  void _setCustomMarker() async {
    BitmapDescriptor customIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(60, 60)),
      'images/Vector.jpg',
    );
    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId(''),
          position: const LatLng(47.9221, 106.9155),
          icon: customIcon,
        ),
      );
    });
  }


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
          },
          initialCameraPosition: const CameraPosition(
              target: LatLng(47.9221, 106.9155), zoom: 10),
              markers: _markers,
      ),
    );
  }
}
