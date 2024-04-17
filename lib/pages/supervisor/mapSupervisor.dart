// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
// import 'package:flutter_map_example/widgets/drawer.dart';
import 'package:latlong2/latlong.dart';
import 'package:progressfeed/pages/moreDetails/civil.dart';
import 'package:progressfeed/picker.dart';

class MapSupervisor extends StatefulWidget {
  static const String route = 'polygon';

  MapSupervisor({Key? key}) : super(key: key);
  

  @override
  State<MapSupervisor> createState() => _MapSupervisorState();
}

class _MapSupervisorState extends State<MapSupervisor> {
  ValueNotifier<GeoPoint?> notifier = ValueNotifier(null);


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
                          maxZoom: 19,
                        ),
                        children: [
                          TileLayer(
                            urlTemplate:
                                'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                            userAgentPackageName:
                                'dev.fleaflet.flutter_map.example',
                          ),
                          MarkerLayer(
                            markers: [
                              Marker(
                                point: LatLng(
                                    28.255560937650856, 83.97735463110831),
                                width: 80,
                                height: 80,
                                builder: (context) => TextButton(
                                  onPressed: () {
                                    CivilMap(context);
                                  },
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.red,
                                    size: 50,
                                  ),
                                ),
                              ),
                              Marker(
                                point: LatLng(28.253763, 83.975427),
                                width: 80,
                                height: 80,
                                builder: (context) => TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        enableDrag: true,
                                        isDismissible: true,
                                        elevation: 10,
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                        ),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.7),
                                        context: context,
                                        builder: (context) {
                                          return SingleChildScrollView(
                                              child: Column(
                                            children: [
                                              Text(
                                                "Seti side Road Construction",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text("Started on june 23 2020"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text("Budget:5 Crore"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "Contractor name:Raman Constructions"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "Location: Pokhara Lamachaur"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "For morer details click below"),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text("more details"),
                                              )
                                            ],
                                          ));
                                        });
                                  },
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.red,
                                    size: 50,
                                  ),
                                ),
                              ),
                              Marker(
                                point: LatLng(28.253958, 83.976736),
                                width: 80,
                                height: 80,
                                builder: (context) => TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        enableDrag: true,
                                        isDismissible: true,
                                        elevation: 10,
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                        ),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.7),
                                        context: context,
                                        builder: (context) {
                                          return SingleChildScrollView(
                                              child: Column(
                                            children: [
                                              Text(
                                                "ABC Hspital ,Pokhara Lamachaur",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text("Started on june 23 2020"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text("Budget:5 Crore"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "Contractor name:Raman Constructions"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "Location: Pokhara Lamachaur"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "For morer details click below"),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text("more details"),
                                              )
                                            ],
                                          ));
                                        });
                                  },
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.red,
                                    size: 50,
                                  ),
                                ),
                              ),
                              Marker(
                                point: LatLng(28.254466, 83.977641),
                                width: 80,
                                height: 80,
                                builder: (context) => TextButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        enableDrag: true,
                                        isDismissible: true,
                                        elevation: 10,
                                        shape: BeveledRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15),
                                              topLeft: Radius.circular(15)),
                                        ),
                                        backgroundColor:
                                            Colors.white.withOpacity(0.7),
                                        context: context,
                                        builder: (context) {
                                          return SingleChildScrollView(
                                              child: Column(
                                            children: [
                                              Text(
                                                "XYZ University ,Pokhara Lamachaur",
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Text("Started on june 23 2020"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text("Budget:5 Crore"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "Contractor name:Raman Constructions"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "Location: Pokhara Lamachaur"),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  "For morer details click below"),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text("more details"),
                                              )
                                            ],
                                          ));
                                        });
                                  },
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.red,
                                    size: 50,
                                  ),
                                ),
                              ),
                              Marker(
                                point: LatLng(28.259754, 83.981108),
                                width: 80,
                                height: 80,
                                builder: (context) => Icon(
                                  Icons.circle,
                                  color: Colors.blue,
                                ),
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
             FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ValueListenableBuilder<GeoPoint?>(
                                valueListenable: notifier,
                                builder: (ctx, p, child) {
                                  return Center(
                                    child: Text(
                                      "${p?.toString() ?? ""}",
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                },
                              ),
                              Column(
                                children: [
                                  // ElevatedButton(
                                  //   onPressed: () async {
                                  //     var p = await Navigator.pushNamed(context, "/search");
                                  //     if (p != null) {
                                  //       notifier.value = p as GeoPoint;
                                  //       print("lat long receiver");
                                  //     }
                                  //   },
                                  //   child: Text("pick address"),
                                  // ),

                                  ElevatedButton(
                                    onPressed: () async {
                                      var p = await showSimplePickerLocation(
                                        context: context,
                                        isDismissible: true,
                                        title: "location picker",
                                        textConfirmPicker: "pick",
                                        zoomOption: ZoomOption(
                                          initZoom: 8,
                                        ),
                                        initPosition: GeoPoint(
                                          latitude: 27.69803,
                                          longitude: 83.46546,
                                        ),
                                        radius: 8.0,
                                      );
                                      if (p != null) {
                                        notifier.value = p;
                                        print("picked lat long");
                                      }
                                    },
                                    child: Text("show picker address"),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  Future<dynamic> CivilMap(BuildContext context) {
    return showModalBottomSheet(
        enableDrag: true,
        isDismissible: true,
        elevation: 10,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        ),
        backgroundColor: Colors.white.withOpacity(0.7),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
              child: Column(
            children: [
              Text(
                "Civil Engineering Building",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Started on june 23 2020"),
              SizedBox(
                height: 5,
              ),
              Text("Budget:5 Crore"),
              SizedBox(
                height: 5,
              ),
              Text("Contractor name:Raman Constructions"),
              SizedBox(
                height: 5,
              ),
              Text("Location: Pokhara Lamachaur"),
              SizedBox(
                height: 5,
              ),
              Text("For morer details click below"),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, 'moredetails');
                  });
                },
                child: Text("more details"),
              )
            ],
          ));
        });
  }
}
