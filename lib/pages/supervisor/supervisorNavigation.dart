import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:progressfeed/providers/app_state_provider.dart';
import 'package:progressfeed/pages/common/Notification.dart';
import 'package:progressfeed/pages/common/bottomSheet.dart';
import 'package:progressfeed/pages/common/homePage.dart';
import 'package:progressfeed/pages/supervisor/mapSupervisor.dart';
import 'package:progressfeed/pages/supervisor/supervisorProfile.dart';

class SupervisorNavigation extends StatefulWidget {
  const SupervisorNavigation({super.key});

  @override
  State<SupervisorNavigation> createState() => _HomePageState();
}

class _HomePageState extends State<SupervisorNavigation> {
  PageController pageController = PageController();

  void OnTaps(int index) {
    context.read<AppStateProvider>().setBottomNavIndex(index);
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateProvider>(
      builder: (context, appState, child) {
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
                        isDismissible: true,
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
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'sendProject');
                                },
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(Icons.send),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Send Project to Feed",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, 'addProjectSupervisor');
                                },
                                child: ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(Icons.add),
                                    radius: 20,
                                  ),
                                  title: Text(
                                    "Add New Project",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
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
            currentIndex: appState.selectedBottomNavIndex,
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
              SupervisorProfile(),
            ],
          ),
        );
      },
    );
  }
}
