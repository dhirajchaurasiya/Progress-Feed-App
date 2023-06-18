import 'package:flutter/material.dart';

class OngoingProjects extends StatefulWidget {
  const OngoingProjects({super.key});

  @override
  State<OngoingProjects> createState() => _OngoingProjectsState();
}

class _OngoingProjectsState extends State<OngoingProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back, color: Colors.black),
            Icon(Icons.more_vert, color: Colors.black),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                "Your Ongoing Projects Update",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              OngoinProjectWidget("June 12,5:10pm", "assets/Profile/post1.jpg"),
              OngoinProjectWidget("July 22,9:10am", "assets/Profile/post2.jpg"),
              OngoinProjectWidget(
                  "April 09,10:10am", "assets/Profile/post3.jpg"),
            ],
          )
        ],
      ),
    );
  }
}

Widget OngoinProjectWidget(String dateAndTime, String imgPath) {
  return Container(
    child: Column(
      children: [
        Container(
          height: 300,
          margin: EdgeInsets.only(right: 10, left: 10),
          child: Image(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          dateAndTime,
          style: TextStyle(color: Colors.black),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Details"),
        ),
      ],
    ),
  );
}
