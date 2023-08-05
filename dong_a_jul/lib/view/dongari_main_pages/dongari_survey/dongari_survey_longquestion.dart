import 'package:flutter/material.dart';

import 'survey_component/survey_add_question.dart';

class LongQuestion extends StatefulWidget {
  const LongQuestion({super.key});

  @override
  State<LongQuestion> createState() => _LongQuestionState();
}

class _LongQuestionState extends State<LongQuestion> {
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
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                '완료',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Text(
                    '1. 질문을 입력하세요',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            TextFormField(
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(vertical: 125, horizontal: 20),
                hintText: '서술형 문항을 작성해주세요',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      width: 1, color: Color.fromRGBO(240, 240, 240, 1)),
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 240, 240, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      color: Color.fromRGBO(210, 210, 210, 1),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                      )),
                  IconButton(
                      color: Color.fromRGBO(210, 210, 210, 1),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                      ))
                ],
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
