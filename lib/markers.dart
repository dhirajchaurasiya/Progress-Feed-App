// import 'package:flutter/material.dart';
// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

// class Marker extends StatefulWidget {
//   const Marker({super.key});

//   @override
//   State<Marker> createState() => _MarkerState();
// }

// class _MarkerState extends State<Marker> {

//   BaseMapController? baseMapController = MapController.withUserPosition();

//   List<MarkerOption> markers = [
//   MarkerOption(
//     position: GeoPoint(latitude: 37.7749, longitude: -122.4194),
//     icon: 'assets/marker.png',
//   ),
//   MarkerOption(
//     position: GeoPoint(latitude: 37.7666, longitude: -122.4278),
//     icon: 'assets/marker.png',
//   ),
// ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Markers"),
//       ),
//       body: Container(),
//     );
//   }

//   Widget _marker() {
//       return OSMFlutter(
//         controller: baseMapController!,
//         initialPosition: GeoPoint(latitude: 37.7749, longitude: -122.4194),
//         zoom: 10.0,
//         markerOption: markers,
//       );
//   }
// }
