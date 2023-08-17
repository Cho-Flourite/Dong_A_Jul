import 'package:flutter/material.dart';
import 'survey_component/survey_add_question.dart';

class ShortQuestion extends StatefulWidget {
  const ShortQuestion({super.key});

  @override
  State<ShortQuestion> createState() => _ShortQuestionState();
}

class _ShortQuestionState extends State<ShortQuestion> {
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
                Container(
                  width: 330,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(240, 240, 240, 1),
                    ),
                    color: Color.fromRGBO(240, 240, 240, 1),
                  ),
                  child: Text(
                    '20자 미만의 답변을 입력할 수 있어요.',
                    style: TextStyle(fontSize: 13, color: Color.fromRGBO(220 , 220, 220, 1)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 255,left: 32,bottom: 10),
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
