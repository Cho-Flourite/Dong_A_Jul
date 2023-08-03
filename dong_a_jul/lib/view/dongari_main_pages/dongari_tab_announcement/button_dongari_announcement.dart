
import 'package:flutter/material.dart';

import '../dongari_main.dart';

class DongariAnnouncementButton extends StatelessWidget {
  const DongariAnnouncementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
      },
      child: Column(children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
            radius: 20,
          ),
          title: Row(
            children: [
              Text(
                '홍길동',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  color: Colors.greenAccent,
                  child: Text(
                    '부장',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Text(
            '🧱 프로그래밍 전시회 신청🧱',
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),
          ),
        ),
        Container(
          child: Text(
            '주제 선정 방향성에 도움이 되고자 몇 가지를 소개 드리고, 프로그래밍 전시회 OT 일정을 공지하려고 합니다🤗…',
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(height: 10,),
      ]),
    );
  }
}
