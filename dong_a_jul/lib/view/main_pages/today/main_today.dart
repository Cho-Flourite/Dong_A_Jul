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
                  '7/23일에 정기모임 있습니다! 참석해주세요!',
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
        Container(
          color: Colors.orange[800],
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    ' 내 동아리',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ButtonMy(),
                        ButtonMy(),
                        ButtonMy(),
                        ButtonMy(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.grey[200],
                  child: ListTile(
                    title: Text(
                      ' 모집중인 동아리',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:
                              (context) => RecruitingDetail()),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ButtonRecruiting(),
                            ButtonRecruiting(),
                            ButtonRecruiting(),
                            ButtonRecruiting(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    ' 최근 활동 동아리',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:
                            (context) => CurrentDetail()),
                      );
                    },
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonCurrent(),
                            ButtonCurrent(),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonCurrent(),
                            ButtonCurrent(),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonCurrent(),
                            ButtonCurrent(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}