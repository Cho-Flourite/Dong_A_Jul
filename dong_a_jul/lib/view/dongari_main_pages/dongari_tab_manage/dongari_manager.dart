import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_recruitment/dongari_recruitment_period.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survey.dart';
import 'package:flutter/material.dart';

class DongariManager extends StatefulWidget {
  const DongariManager({super.key});

  @override
  State<DongariManager> createState() => _DongariManagerState();
}

class _DongariManagerState extends State<DongariManager> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            '모집기간 수정',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RecruitmentPeriod()));
          },
          trailing: Icon(Icons.arrow_forward),
        ),
        Divider(),
        ListTile(
          title: Text(
            '카테고리 수정',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
          trailing: Icon(Icons.arrow_forward),
        ),
        Divider(),
        ListTile(
          title: Text(
            '모집글 수정',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
          trailing: Icon(Icons.arrow_forward),
        ),
        Divider(),
        ListTile(
          title: Text(
            '동아리원 관리',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
          trailing: Icon(Icons.arrow_forward),
        ),
        Divider(),
        ListTile(
          title: Text(
            '신청 폼 작성/수정',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DongariSurvey()));
          },
          trailing: Icon(Icons.arrow_forward),
        ),
        Divider(),
        ListTile(
          title: Text(
            '신청 폼 결과',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
          trailing: Icon(Icons.arrow_forward),
        ),
        Divider(),
      ],
    );
  }
}
