import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:progressfeed/providers/user_provider.dart';
import 'package:progressfeed/providers/app_state_provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              context.read<UserProvider>().logout();
              context.read<AppStateProvider>().logout();
              Navigator.pushReplacementNamed(context, 'signIn');
            },
          ),
        ],
      ),
      body: Consumer<UserProvider>(
        builder: (context, userProvider, child) {
          final user = userProvider.currentUser;

          return Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: user?.profileImageUrl != null
                        ? NetworkImage(user!.profileImageUrl!)
                        : AssetImage('assets/user.png') as ImageProvider,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user?.name ?? "Progress Feed",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        user?.email ?? "progressfeed@gmail.com",
                        style: TextStyle(fontSize: 18),
                      ),
                      if (user?.phone != null)
                        Text(
                          user!.phone,
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                      Text(
                        "Type: ${user?.userType ?? 'User'}",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
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
              const ListTile(
                leading: Icon(Icons.group),
                title: Text("Friends"),
              ),
              const ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
              ),
              const ListTile(
                leading: Icon(Icons.call),
                title: Text("Contact Us"),
              ),
              const ListTile(
                leading: Icon(Icons.notes),
                title: Text("Terms and Conditions"),
              ),
              const Divider(
                thickness: 5,
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log Out"),
                onTap: () {
                  context.read<UserProvider>().logout();
                  context.read<AppStateProvider>().logout();
                  Navigator.pushReplacementNamed(context, 'signIn');
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
