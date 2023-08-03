import 'package:dong_a_jul/view/main_pages/today/button_current.dart';
import 'package:dong_a_jul/view/main_pages/today/button_my.dart';
import 'package:dong_a_jul/view/main_pages/today/button_recommend.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_main.dart';
import 'package:flutter/material.dart';

class TodaysClub extends StatelessWidget {
  const TodaysClub({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(
                  width: 20,
                ),
                Text('7/23일에 정기모임 있습니다! 참석해주세요!'),
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
                  trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {  },),
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
                ListTile(
                  title: Text(
                    ' 오늘의 추천 동아리',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                ),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('#체육 카테고리의 동아리를 추천해드려요'),
                        trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {  },),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ButtonRecommend(),
                            ButtonRecommend(),
                            ButtonRecommend(),
                            ButtonRecommend(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
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
                  trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {  },),
                ),

                Container(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonCurrent(),
                            ButtonCurrent(),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey[200],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonCurrent(),
                            ButtonCurrent(),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey[200],
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
