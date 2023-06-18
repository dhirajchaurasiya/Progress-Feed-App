import 'package:flutter/material.dart';
import 'package:progressfeed/pages/common/Notification.dart';
import 'package:progressfeed/pages/common/bottomSheet.dart';
import 'package:progressfeed/pages/common/homePage.dart';
import 'package:progressfeed/pages/common/location.dart';
import 'package:progressfeed/pages/contractor/Profile_contractor.dart';
import 'package:progressfeed/pages/profile.dart';
import 'package:progressfeed/pages/supervisor/mapSupervisor.dart';

class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _HomePageState();
}

class _HomePageState extends State<Navigations> {
  PageController pageController = PageController();
  int selectedIndex = 0;
  void OnTaps(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey,
            icon: Icon(Icons.home, size: 40),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 40,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    enableDrag: true,
                    isDismissible: false,
                    elevation: 10,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Color.fromARGB(255, 3, 4, 19),
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
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.video_file_rounded),
                              radius: 20,
                            ),
                            title: Text("Upload video",
                                style: TextStyle(color: Colors.white)),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              child: Icon(Icons.upload),
                              radius: 20,
                            ),
                            title: Text("Your Uploads",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      );
                    });
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              child: Icon(
                Icons.add,
                size: 40,
              ),
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: 40,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 40,
            ),
            label: ' ',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.blue,
        onTap: OnTaps,
      ),
      body: PageView(
        controller: pageController,
        children: [
          HomePage(),
          MapSupervisor(),
          ButtomSheet(),
          Notifications(),
          ProfileContractor(),
        ],
      ),
    );
  }
}
