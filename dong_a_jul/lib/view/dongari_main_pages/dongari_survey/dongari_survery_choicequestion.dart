import 'package:flutter/material.dart';

import 'survey_component/survey_add_question.dart';

class ChoiceQuestion extends StatefulWidget {
  const ChoiceQuestion({super.key});

  @override
  State<ChoiceQuestion> createState() => _ChoiceQuestionState();
}

class _ChoiceQuestionState extends State<ChoiceQuestion> {
  final _formKey = GlobalKey<FormState>();
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
            onPressed: () {
              print('제출완료');
            },
            child: Text(
              '완료',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Container(
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
//todo 유효성 검사
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '질문을 입력해주세요';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        decoration: InputDecoration(
                          hintText: '1. 질문을 입력하세요.',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
//todo 버튼 onPressed
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    minimumSize:
                        MaterialStateProperty.all(Size(300, 45)), // 사이즈 조정
                  ),
                  child: const Text("보기 추가하기"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 75, left: 32, bottom: 10),
                  child: Container(
                    child: Row(
                      children: [
                        IconButton(
                          color: Color.fromRGBO(210, 210, 210, 1),
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                        IconButton(
                          color: Color.fromRGBO(210, 210, 210, 1),
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(child: AddButtons()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
