import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survey_shortquestion.dart';
import 'package:flutter/material.dart';

import 'survey_component/survey_add_question.dart';

class DongariSurvey extends StatefulWidget {
  const DongariSurvey({super.key});

  @override
  State<DongariSurvey> createState() => _DongariSurveyState();
}

class _DongariSurveyState extends State<DongariSurvey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          '지원하기',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 32, right: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
                  radius: 40,
                ),
                title: Text(
                  '아롬',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            TextFormField(
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 150, horizontal: 20),
                hintText: '동아리 소개글을 입력해주세요',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      width: 1, color: Color.fromRGBO(240, 240, 240, 1)),
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 240, 240, 1),
              ),
            ),
            Spacer(),
            AddButtons(),
          ],
        ),
      ),
    );
  }
}
