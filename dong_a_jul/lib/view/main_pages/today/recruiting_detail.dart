import 'package:dong_a_jul/view/main_pages/today/button_current.dart';
import 'package:dong_a_jul/view/main_pages/today/button_recruiting.dart';
import 'package:dong_a_jul/view/main_pages/today/button_recruiting_detail.dart';
import 'package:flutter/material.dart';

import '../../notification_pages/notification.dart';
import '../../profile_pages/profile.dart';

class RecruitingDetail extends StatefulWidget {
  const RecruitingDetail({super.key});

  @override
  State<RecruitingDetail> createState() => _RecruitingDetailState();
}

class _RecruitingDetailState extends State<RecruitingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '모집중인 동아리',
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
            childAspectRatio: 4/5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: [
            ButtonRecruitingDetail(),
            ButtonRecruitingDetail(),
            ButtonRecruitingDetail(),
          ],
        ),
      ),
    );
  }
}
