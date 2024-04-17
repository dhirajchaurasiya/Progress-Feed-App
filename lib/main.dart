import 'package:flutter/material.dart';
import 'package:progressfeed/gps.dart';
import 'package:progressfeed/live_location.dart';
import 'package:progressfeed/markers.dart';
import 'package:progressfeed/pages/common/Notification.dart';
import 'package:progressfeed/pages/common/Navigations.dart';
import 'package:progressfeed/pages/common/homePage.dart';
import 'package:progressfeed/pages/common/location.dart';
import 'package:progressfeed/pages/common/signIn.dart';
import 'package:progressfeed/pages/contractor/Profile_contractor.dart';
import 'package:progressfeed/pages/contractor/details.dart';
import 'package:progressfeed/pages/contractor/ongoingProjects.dart';
import 'package:progressfeed/pages/contractor/signUp_Contractor.dart';
import 'package:progressfeed/pages/moreDetails/civil.dart';
import 'package:progressfeed/pages/supervisor/addProjectSupervisor.dart';
import 'package:progressfeed/pages/supervisor/mapSupervisor.dart';
import 'package:progressfeed/pages/supervisor/sendProject.dart';
import 'package:progressfeed/pages/supervisor/signUp_Supervisor.dart';
import 'package:progressfeed/pages/supervisor/supervisorNavigation.dart';
import 'package:progressfeed/pages/user/signUp_User.dart';
import 'package:progressfeed/pages/user/userNavigation.dart';
import 'package:progressfeed/picker.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'gps',
      routes: {
        'signUpUser': (context) => SignUpUser(),
        'signUpContractor': (context) => SignUpContractor(),
        'signUpSupervisor': (context) => SignUpSupervisor(),
        'Notification': (context) => Notifications(),
        'Navigations': (context) => Navigations(),
        'Profile_contractor': (context) => ProfileContractor(),
        'details': (context) => Details(),
        'ongoingProjects': (context) => OngoingProjects(),
        'signIn': (context) => SignIn(),
        'mapSupervisor': (context) => MapSupervisor(),
        'addProjectSupervisor': (context) => AddProjectSupervisor(),
        'sendProject': (context) => SendProject(),
        'homePage': (context) => HomePage(),
        'supervisorNavigations': (context) => SupervisorNavigation(),
        'userNavigation': (context) => UserNavigation(),
        'moredetails': (context) => CivilConstruction(),
        'gps': (context) => Home(),
        'picker': (context) => LocationAppExample(),
        'livelocation': (context) => Livelocation(),
        // 'marker': (context) => Marker(),
      },
    ),
  );
}
