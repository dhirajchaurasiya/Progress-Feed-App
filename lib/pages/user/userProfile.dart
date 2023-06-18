import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 70,
                    child: Image(
                      height: 100,
                      image: AssetImage('assets/user.png'),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Profile",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "userprofile@gmail.com",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 5,
              ),
              TextButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.group,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Friends",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.language,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Language",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.notes,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Terms and Conditions",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Divider(
                thickness: 5,
              ),
              TextButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Setting",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Log Out",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
