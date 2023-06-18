import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map_example/widgets/drawer.dart';
import 'package:latlong2/latlong.dart';

class Location extends StatefulWidget {
  static const String route = 'polygon';

  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    final notFilledPoints = <LatLng>[
      LatLng(28.255560937650856, 83.97735463110831),
      LatLng(28.255375975133873, 83.97735815694085),
      LatLng(28.25537493989563, 83.9774854786686),
      LatLng(28.255382531646333, 83.97748587042747),
      LatLng(28.255383221806042, 83.97759164540321),
      LatLng(
        28.25556162780849,
        83.9775873360528,
      ),
      LatLng(
        28.255560937650856,
        83.97735463110831,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    //margin: EdgeInsets.zero,
                    child: Flexible(
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(28.255560937650856, 83.97735463110831),
                          zoom: 17,
                          onTap: (notFilledPoints, point) =>
                              showModalBottomSheet(
                                  enableDrag: true,
                                  isDismissible: false,
                                  elevation: 10,
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  backgroundColor:
                                      Color.fromARGB(255, 3, 4, 19),
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          leading: CircleAvatar(
                                            child: Icon(Icons.upload_file),
                                            radius: 20,
                                          ),
                                          title: Text(
                                            "Upload image",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        ListTile(
                                          leading: CircleAvatar(
                                            child:
                                                Icon(Icons.video_file_rounded),
                                            radius: 20,
                                          ),
                                          title: Text("Upload video",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        ListTile(
                                          leading: CircleAvatar(
                                            child: Icon(Icons.upload),
                                            radius: 20,
                                          ),
                                          title: Text("Your Uploads",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ],
                                    );
                                  }),
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            userAgentPackageName:
                                'dev.fleaflet.flutter_map.example',
                          ),
                          PolygonLayer(
                            polygons: [
                              Polygon(
                                points: notFilledPoints,
                                isFilled: false,
                                isDotted: false,
                                borderColor: Colors.green,
                                borderStrokeWidth: 4,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.width * 0.02,
              child: TextButton(
                onPressed: () {},
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(25, 188, 150, 0.4),
                  child: Icon(
                    Icons.location_pin,
                    color: Colors.black,
                  ),
                  radius: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
