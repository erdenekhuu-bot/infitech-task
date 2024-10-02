import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late GoogleMapController mapController;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
              target: LatLng(47.9221, 106.9155), zoom: 10),
              markers: Set<Marker>.of({
                Marker(
                  markerId: MarkerId("Default location"),
                  icon: BitmapDescriptor.defaultMarker,
                ),
              }),
      ),
    );
  }
}
