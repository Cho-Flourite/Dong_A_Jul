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
      resizeToAvoidBottomInset: true,
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const SizedBox(height: 20),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg',
                  ),
                  radius: 40,
                ),
                title: const Text(
                  '아롬',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: SingleChildScrollView(
                    child: TextFormField(
                      maxLines: 10,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        hintText: '지원 안내사항을 입력해주세요.\n\n(활동기간, 모집일정 등)',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(240, 240, 240, 1)),
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(240, 240, 240, 1),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Spacer(),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 32, right: 32, bottom: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("개인정보 수집 및 동의서 작성하기"),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8.0),
                          minimumSize: const Size(630, 45),
                          backgroundColor:
                              const Color.fromRGBO(255, 121, 34, 1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
