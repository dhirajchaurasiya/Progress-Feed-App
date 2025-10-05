import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:provider/provider.dart';
import 'package:progressfeed/providers/location_provider.dart';

class LocationAppExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LocationAppExampleState();
}

class _LocationAppExampleState extends State<LocationAppExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search picker example"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<LocationProvider>(
              builder: (context, locationProvider, child) {
                return Center(
                  child: Text(
                    "${locationProvider.selectedLocation?.toString() ?? ""}",
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    var p = await Navigator.pushNamed(context, "/search");
                    if (p != null) {
                      context
                          .read<LocationProvider>()
                          .setSelectedLocation(p as GeoPoint);
                    }
                  },
                  child: Text("pick address"),
                ),
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
                        latitude: 47.4358055,
                        longitude: 8.4737324,
                      ),
                      radius: 8.0,
                    );
                    if (p != null) {
                      context.read<LocationProvider>().setSelectedLocation(p);
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
  }
}

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController textEditingController = TextEditingController();
  late PickerMapController controller = PickerMapController(
    initMapWithUserPosition: UserTrackingOption(),
  );

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(textOnChanged);
  }

  void textOnChanged() {
    controller.setSearchableText(textEditingController.text);
  }

  @override
  void dispose() {
    textEditingController.removeListener(textOnChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPickerLocation(
      controller: controller,
      // showDefaultMarkerPickWidget: true,
      topWidgetPicker: Padding(
        padding: const EdgeInsets.only(
          top: 56,
          left: 8,
          right: 8,
        ),
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_back_ios,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    onEditingComplete: () async {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                      decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffix: ValueListenableBuilder<TextEditingValue>(
                        valueListenable: textEditingController,
                        builder: (ctx, text, child) {
                          if (text.text.isNotEmpty) {
                            return child!;
                          }
                          return SizedBox.shrink();
                        },
                        child: InkWell(
                          focusNode: FocusNode(),
                          onTap: () {
                            textEditingController.clear();
                            controller.setSearchableText("");
                            FocusScope.of(context)
                                .requestFocus(new FocusNode());
                          },
                          child: Icon(
                            Icons.close,
                            size: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      focusColor: Colors.black,
                      filled: true,
                      hintText: "search",
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      fillColor: Colors.grey[300],
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            TopSearchWidget()
          ],
        ),
      ),
      bottomWidgetPicker: Positioned(
        bottom: 12,
        right: 8,
        child: FloatingActionButton(
          onPressed: () async {
            GeoPoint p = await controller.selectAdvancedPositionPicker();
            Navigator.pop(context, p);
          },
          child: Icon(Icons.arrow_forward),
        ),
      ),
      pickerConfig: CustomPickerLocationConfig(
        zoomOption: ZoomOption(
          initZoom: 8,
        ),
      ),
    );
  }
}

class TopSearchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TopSearchWidgetState();
}

class _TopSearchWidgetState extends State<TopSearchWidget> {
  late PickerMapController controller;
  late StreamController<List<SearchInfo>> streamSuggestion = StreamController();
  late Future<List<SearchInfo>> _futureSuggestionAddress;
  String oldText = "";
  Timer? _timerToStartSuggestionReq;
  final Key streamKey = Key("streamAddressSug");

  @override
  void initState() {
    super.initState();
    controller = CustomPickerLocation.of(context);
    controller.searchableText.addListener(onSearchableTextChanged);
  }

  void onSearchableTextChanged() async {
    final v = controller.searchableText.value;
    final locationProvider = context.read<LocationProvider>();
    
    if (v.length > 3 && oldText != v) {
      oldText = v;
      locationProvider.setSearchText(v);
      
      if (_timerToStartSuggestionReq != null &&
          _timerToStartSuggestionReq!.isActive) {
        _timerToStartSuggestionReq!.cancel();
      }
      _timerToStartSuggestionReq =
          Timer.periodic(Duration(seconds: 3), (timer) async {
        await suggestionProcessing(v);
        timer.cancel();
      });
    }
    if (v.isEmpty) {
      await reInitStream();
      locationProvider.clearSearchText();
    }
  }

  Future reInitStream() async {
    context.read<LocationProvider>().setAutoCompletionVisible(false);
    await streamSuggestion.close();
    setState(() {
      streamSuggestion = StreamController();
    });
  }

  Future<void> suggestionProcessing(String addr) async {
    final locationProvider = context.read<LocationProvider>();
    locationProvider.setAutoCompletionVisible(true);
    
    _futureSuggestionAddress = addressSuggestion(
      addr,
      limitInformation: 5,
    );
    _futureSuggestionAddress.then((value) {
      streamSuggestion.sink.add(value);
      locationProvider.setSuggestions(value);
    });
  }

  @override
  void dispose() {
    controller.searchableText.removeListener(onSearchableTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocationProvider>(
      builder: (context, locationProvider, child) {
        return AnimatedContainer(
          duration: Duration(
            milliseconds: 500,
          ),
          height: locationProvider.isAutoCompletionVisible
              ? MediaQuery.of(context).size.height / 4
              : 0,
          child: Card(
            child: StreamBuilder<List<SearchInfo>>(
              stream: streamSuggestion.stream,
              key: streamKey,
              builder: (ctx, snap) {
                if (snap.hasData) {
                  return ListView.builder(
                    itemExtent: 50.0,
                    itemBuilder: (ctx, index) {
                      return ListTile(
                        title: Text(
                          snap.data![index].address.toString(),
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                        onTap: () async {
                          /// go to location selected by address
                          controller.goToLocation(
                            snap.data![index].point!,
                          );

                          /// hide suggestion card
                          locationProvider.setAutoCompletionVisible(false);
                          await reInitStream();
                          FocusScope.of(context).requestFocus(
                            new FocusNode(),
                          );
                        },
                      );
                    },
                    itemCount: snap.data!.length,
                  );
                }
                if (snap.connectionState == ConnectionState.waiting) {
                  return Card(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return SizedBox();
              },
            ),
          ),
        );
      },
    );
  }
}