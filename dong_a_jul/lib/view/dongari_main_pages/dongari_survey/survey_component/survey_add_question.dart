import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survery_choicequestion.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survey_longquestion.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survey_multi_choicequestion.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survey_shortquestion.dart';
import 'package:flutter/material.dart';

class AddButtons extends StatelessWidget {
  const AddButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32, bottom: 10),
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext) {
                return Container(
                  height: 300, // 모달 높이 크기
                  decoration: const BoxDecoration(
                    color: Colors.white, // 모달 배경색
                    borderRadius: BorderRadius.only(
                      // todo: 라운딩처리
                      topLeft: Radius.circular(20), // 모달 좌상단 라운딩 처리
                      topRight: Radius.circular(20), // 모달 우상단 라운딩 처리
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        //todo page이동
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ShortQuestion()));
                        },
                        child: const Text(
                          '단답형 문항',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LongQuestion()));
                        },
                        child: const Text(
                          '서술형 문항',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChoiceQuestion()));
                        },
                        child: const Text(
                          '객관식 문항',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MultiChoiceQuestion()));
                        },
                        child: const Text(
                          '객관식 문항(중복)',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: const Text('문항 추가하기'),
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8.0),
            minimumSize: const Size(630, 45),
            backgroundColor: const Color.fromRGBO(255, 121, 34, 1)),
      ),
    );
  }
}
