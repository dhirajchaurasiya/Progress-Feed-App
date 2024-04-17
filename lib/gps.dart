import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Note: updated import for latlong

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool serviceStatus = false;
  bool hasPermission = false;
  late LocationPermission permission;
  late Position position;
  String longitude = "";
  String latitude = "";
  late StreamSubscription<Position> positionStream;

  @override
  void initState() {
    super.initState();
    checkGps();
  }

  @override
  void dispose() {
    positionStream.cancel();
    super.dispose();
  }

  void checkGps() async {
    serviceStatus = await Geolocator.isLocationServiceEnabled();
    if (serviceStatus) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          print('Location permissions are denied');
        } else if (permission == LocationPermission.deniedForever) {
          print("'Location permissions are permanently denied");
        } else {
          hasPermission = true;
        }
      } else {
        hasPermission = true;
      }

      if (hasPermission) {
        setState(() {});
        getLocation();
      }
    } else {
      print("GPS Service is not enabled, turn on GPS location");
    }
  }

  void getLocation() async {
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    longitude = position.longitude.toString();
    latitude = position.latitude.toString();

    setState(() {});

    LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    positionStream = Geolocator.getPositionStream(locationSettings: locationSettings).listen((Position position) {
      longitude = position.longitude.toString();
      latitude = position.latitude.toString();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get GPS Location"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * 0.7,
              child: latitude.isNotEmpty && longitude.isNotEmpty
                  ? FlutterMap(
                      options: MapOptions(
                        center: LatLng(
                          double.tryParse(latitude) ?? 0.0,
                          double.tryParse(longitude) ?? 0.0,
                        ),
                        zoom: 13.0,
                      ),
                      children: [                                                                           //this initially had layers, changing to children works
                        TileLayer(                                                                          //this had initially tile layeroptions, replacing with tile layer worked
                          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                              width: 80.0,
                              height: 80.0,
                              point: LatLng(
                                double.tryParse(latitude) ?? 0.0,
                                double.tryParse(longitude) ?? 0.0,
                              ),
                              builder: (ctx) => Container(
                                child: Icon(Icons.location_on, color: Colors.red, size: 40.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Center(child: CircularProgressIndicator()),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(serviceStatus ? "GPS is Enabled" : "GPS is disabled."),
                  Text(hasPermission ? "GPS is Enabled" : "GPS is disabled."),
                  Text("Longitude: $longitude", style: TextStyle(fontSize: 20)),
                  Text("Latitude: $latitude", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





/*visited documentations:
modified chatgpt code ig
https://chat.openai.com/c/01c4d8fd-0b23-4468-8925-a64d1c840810
https://github.com/fleaflet/flutter_map
https://pub.dev/packages/flutter_map_location_marker/example
https://github.com/tlserver/flutter_map_location_marker/blob/main/example/lib/page/minimum_example.dart
*/