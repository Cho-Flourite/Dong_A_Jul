import 'package:dong_a_jul/view/main_pages/today/button_current.dart';
import 'package:dong_a_jul/view/main_pages/today/button_my.dart';
import 'package:dong_a_jul/view/main_pages/today/button_recommend.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_main.dart';
import 'package:dong_a_jul/view/main_pages/today/button_recruiting.dart';
import 'package:dong_a_jul/view/main_pages/today/current_detail.dart';
import 'package:dong_a_jul/view/main_pages/today/recruiting_detail.dart';
import 'package:flutter/material.dart';

class TodaysClub extends StatelessWidget {
  const TodaysClub({super.key});
  @override
  Widget build(BuildContext context) {
/*
    return ButtonCurrent();
*/
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        ListTile(
          title: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.orange[800],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '세종대학교 동아리입니다 !',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
          ),
          tileColor: Colors.orange[800],
        ),
        ButtonCurrent(),
      ],
    );
  }
}
