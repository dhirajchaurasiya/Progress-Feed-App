import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class SendProject extends StatefulWidget {
  const SendProject({super.key});

  @override
  State<SendProject> createState() => _SendProjectState();
}

class _SendProjectState extends State<SendProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.more_vert),
        ],
      )),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Post Your Project",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'homePage');
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                color: Colors.grey,
                height: 400,
                width: double.infinity,
                child: Text(""),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Add Caption. . .",
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Description. . .",
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Upload Image"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
