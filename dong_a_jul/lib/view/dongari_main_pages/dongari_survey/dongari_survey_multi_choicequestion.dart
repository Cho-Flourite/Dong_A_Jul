import 'package:flutter/material.dart';

import 'survey_component/survey_add_question.dart';

class MultiChoiceQuestion extends StatefulWidget {
  const MultiChoiceQuestion({super.key});

  @override
  State<MultiChoiceQuestion> createState() => _MultiChoiceQuestionState();
}

class _MultiChoiceQuestionState extends State<MultiChoiceQuestion> {
  @override
  Widget build(BuildContext context) {
    var selectedOption;

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
                    '1. 질문을 입력하세요(복수선택)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            RadioListTile(
              title: Text('보기 1'),
              value: 'Option A',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            RadioListTile(
              title: Text('보기 2'),
              value: 'Option A',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
            OutlinedButton(
              //todo 버튼 onPressed
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                minimumSize: MaterialStateProperty.all(Size(300, 45)), // 사이즈 조정
              ),
              child: const Text("보기 추가하기"),
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
