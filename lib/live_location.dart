import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Livelocation extends StatefulWidget {
  @override
  _LivelocationState createState() => _LivelocationState();
}

class _LivelocationState extends State<Livelocation> {
  Position? _currentPosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentPosition != null) Text(
              "LAT: ${_currentPosition!.latitude}, LNG: ${_currentPosition!.longitude}"
            ),
            TextButton(
              child: Text("Get location"),
              onPressed: () {
                _getCurrentLocation();
              },
            ),
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    Geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
      .then((Position position) {
        setState(() {
          _currentPosition = position;
        });
      }).catchError((e) {
        print(e); 
      });
  }
}
