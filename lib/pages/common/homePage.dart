import 'dart:math';

import 'package:flutter/material.dart';
import 'package:progressfeed/pages/moreDetails/civil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _ButtomNavgtState();
}

class _ButtomNavgtState extends State<HomePage> {
  int selIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 50,
              image: AssetImage('assets/titlelogo.png'),
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/Profile/ramanconst.jpg'),
                          radius: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Civil Engineering Building',
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              'raman Construction',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '5 min ago',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post1.jpg"),
                            fit: BoxFit.fill),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post2.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post3.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.comment,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.send,
                              size: 45,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'mapSupervisor');
                                  CivilMap(context);
                                },
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 45,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ramanconstruction@gmail",
                        style: TextStyle(fontSize: 23),
                      ),
                      Expanded(
                        child: Text(
                          "This is the project curently going on in the paschimanchal campus and is about to complete in few days.These are the updates regarding this project.",
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/Profile/ramanconst.jpg'),
                          radius: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'XYZ University,Pokhara ',
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              'Sita Construction',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '5 days ago',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post1.jpg"),
                            fit: BoxFit.fill),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post2.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post3.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.comment,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.send,
                              size: 45,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'mapSupervisor');
                                  CivilMap(context);
                                },
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 45,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "sitaconstruction@gmail",
                        style: TextStyle(fontSize: 23),
                      ),
                      Expanded(
                        child: Text(
                          "This is the project curently going on in the paschimanchal campus and is about to complete in few days.These are the updates regarding this project.",
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/Profile/ramanconst.jpg'),
                          radius: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ABC Hospital Pokhara',
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              'Pavil Construction',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '1 yrs ago',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post1.jpg"),
                            fit: BoxFit.fill),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post2.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post3.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.comment,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.send,
                              size: 45,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'mapSupervisor');
                                  CivilMap(context);
                                },
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 45,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "pavilconstruction@gmail",
                        style: TextStyle(fontSize: 23),
                      ),
                      Expanded(
                        child: Text(
                          "This is the project curently going on in the paschimanchal campus and is about to complete in few days.These are the updates regarding this project.",
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 7),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/Profile/ramanconst.jpg'),
                          radius: 30,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seti Side Road Construction',
                              style: TextStyle(fontSize: 23),
                            ),
                            Text(
                              'Sharma Construction',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              '2 yrs ago',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post1.jpg"),
                            fit: BoxFit.fill),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post2.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image(
                            image: AssetImage("assets/Profile/post3.jpg"),
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.comment,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.send,
                              size: 45,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            CircleAvatar(
                              radius: 4,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'mapSupervisor');
                                  CivilMap(context);
                                },
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 45,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "sharmaconstruction@gmail",
                        style: TextStyle(fontSize: 23),
                      ),
                      Expanded(
                        child: Text(
                          "This is the project curently going on in the paschimanchal campus and is about to complete in few days.These are the updates regarding this project.",
                          style: TextStyle(fontSize: 17),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PostDetails extends StatelessWidget {
  const PostDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 70,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/Profile/ramanconst.jpg'),
                    radius: 30,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Civil Engineering building ',
                        style: TextStyle(fontSize: 23),
                      ),
                      Text(
                        'Raman Construction',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        '5 min ago',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          Container(
            height: 350,
            color: Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image(
                      image: AssetImage("assets/Profile/post1.jpg"),
                      fit: BoxFit.fill),
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image(
                      image: AssetImage("assets/Profile/post2.jpg"),
                      fit: BoxFit.cover),
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image(
                      image: AssetImage("assets/Profile/post3.jpg"),
                      fit: BoxFit.cover),
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        size: 45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.comment,
                        size: 45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.send,
                        size: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 4,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      CircleAvatar(
                        radius: 4,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      CircleAvatar(
                        radius: 4,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'mapSupervisor');
                            CivilMap(context);
                          },
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 45,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            height: 100,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "userName@gmail",
                  style: TextStyle(fontSize: 23),
                ),
                Expanded(
                  child: Text(
                    "This is the project curently going on in the paschimanchal campus and is about to complete in few days.These are the updates regarding this project.",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
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
                CivilConstruction();
              },
              child: Text("more details"),
            )
          ],
        ));
      });
}
