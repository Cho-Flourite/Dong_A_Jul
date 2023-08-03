import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survey_shortquestion.dart';
import 'package:flutter/material.dart';

class DongariSurvey extends StatefulWidget {
  const DongariSurvey({super.key});

  @override
  State<DongariSurvey> createState() => _DongariSurveyState();
}

class _DongariSurveyState extends State<DongariSurvey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              margin: const EdgeInsets.only(
                  left: 30, top: 100, right: 30, bottom: 15),
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
                                          builder: (context) =>
                                              const ShortQuestion()));
                                },
                                child: const Text(
                                  '단답형 문항',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  '서술형 문항',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  '객관식 문항',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
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
                    minimumSize: const Size(500, 45),
                    backgroundColor: const Color.fromRGBO(255, 121, 34, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
