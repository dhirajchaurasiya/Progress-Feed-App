import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notifications",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "New",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
                NotificationCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.blue.shade100,
      child: ListTile(
        hoverColor: Colors.amber,
        contentPadding: EdgeInsets.all(5),
        leading: CircleAvatar(
          radius: 30,
        ),
        title: Text("Nepal Construction company limited  has one new update."),
        subtitle: Text("2 minutes ago"),
      ),
    );
  }
}
