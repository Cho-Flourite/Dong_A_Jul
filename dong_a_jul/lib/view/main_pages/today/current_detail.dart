import 'package:dong_a_jul/view/main_pages/today/button_current.dart';
import 'package:flutter/material.dart';

import '../../notification_pages/notification.dart';
import '../../profile_pages/profile.dart';

class CurrentDetail extends StatefulWidget {
  const CurrentDetail({super.key});

  @override
  State<CurrentDetail> createState() => _CurrentDetailState();
}

class _CurrentDetailState extends State<CurrentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '최근 활동 동아리',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
              icon: const Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
              },
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              )),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 9/10,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            ButtonCurrent(),
            ButtonCurrent(),
            ButtonCurrent(),
          ],
        ),
      ),
    );
  }
}
