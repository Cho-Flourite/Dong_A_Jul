import 'package:flutter/material.dart';

class DongariRecruitmentPage extends StatelessWidget {
  const DongariRecruitmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    String main = '안녕하세요! 세종대학교 학생 여러분들, 세종대학교 중앙 학술 프로그래밍동아리 인터페이스 입니다.😊2023년을 맞이하여 36기 신입부원을 모집합니다!📁모집대상▪️프로그래밍과 코딩에 관심있는 세종대학교 학생▪️새학기 동기들, 선배들과 친해지고 싶은 새내기▪️코린이📁신청방법오프라인: 학생회관 518호(방문 전 오픈 카톡으로 방문 예정시간 말씀해주세요!)온라인: 아래 링크 들어간 뒤 설문지 작성 ( 마감은 3/20 (월) !!!! 잊지 말아주세요😚)📲: https://forms.gle/qCkPjkdoEqLmnPQ5A📁활동내용';
    return Column(
      children: [
        SizedBox(height: 5,),
        ListTile(
          tileColor: Colors.white,
          title: Row(
            children: [
              Text(
                '모집기간',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(width: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                  color: Colors.orange[800],
                  child: Text(
                    'D-7',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40),

            ],
          ),
          trailing: Text('7월 2일 ~ 7월 20일'),
        ),
        SizedBox(height: 5,),
        Container(
          child: Image.network(
            'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg',
            fit: BoxFit.cover,
          ),
        ),
        ListTile(
          tileColor: Colors.white,
          title:Text(
            '💡세종대학교 중앙 학술동아리 인터페이스에서 뉴페이스를 모집합니다!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        ListTile(
          tileColor: Colors.white,
          title:Text(
            main,
            style: TextStyle( fontSize: 15),
          ),
        ),
        ListTile(
          tileColor: Colors.white,
          title:Text(
            main,
            style: TextStyle( fontSize: 15),
          ),
        ),
        SizedBox(height: 5,),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                title:Text(
                  '동아리방 위치',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListTile(
                title:Text(
                  '학생회관 518호',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}