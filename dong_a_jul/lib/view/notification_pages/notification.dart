import 'package:dong_a_jul/view/bottom_sheets/bottom_interest/bottom_sheet_interest.dart';
import 'package:dong_a_jul/view/bottom_sheets/bottom_my/bottom_sheet_my.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            elevation: 0,
            title: Text('알림',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            bottom: TabBar(
              indicatorWeight: 4.0,
              indicatorColor: Colors.orange[800],
              labelPadding: EdgeInsets.all(3),
              padding: EdgeInsets.all(3),
              tabs: [
                Text(
                  '전체',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  '내 활동',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [BottomInterest(), BottomInterest()],
          ),
        ),
      ),
    );
  }
}
