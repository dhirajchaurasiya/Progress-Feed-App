import 'package:flutter/material.dart';

class AddProjectSupervisor extends StatelessWidget {
  const AddProjectSupervisor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 194, 237, 170).withOpacity(0.2),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.more_vert),
            ],
          )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      color: Colors.white,
                      child: Text(
                        "Reference No:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.white,
                  height: 40,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color: Colors.black38,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 30,
                  child: Row(
                    children: [
                      Text(
                        "Location Coordinates",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.45,
                          color: Colors.white,
                          child: Text(
                            "Lattitude",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.45,
                          color: Colors.white,
                          child: Text(
                            "Longitude",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    LongLatList(),
                    SizedBox(
                      height: 5,
                    ),
                    LongLatList(),
                    SizedBox(
                      height: 5,
                    ),
                    LongLatList(),
                    SizedBox(
                      height: 5,
                    ),
                    LongLatList(),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Project Name:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.black38,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Generate PassKey",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LongLatList extends StatelessWidget {
  const LongLatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.45,
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.black38,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.45,
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                  color: Colors.black38,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
