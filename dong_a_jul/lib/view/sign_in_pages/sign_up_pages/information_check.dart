import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/existing_dongari.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/interest_category.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:flutter/material.dart';

class InformationCheck extends StatefulWidget {
  const InformationCheck({super.key});

  @override
  State<InformationCheck> createState() => _InformationCheckState();
}

class _InformationCheckState extends State<InformationCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    '기본 정보를',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 20),
                  child: Text(
                    '확인해주세요',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Stack(children: [
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        width: MediaQuery.of(context).size.width - 40,
                        height: 250,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 40,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey[300]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 200,
                      top: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '성함',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '홍길동',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '성별',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '여성',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '학번',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '20230720',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '학년',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '3학년',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '학과',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '디자인이노베이션',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                    top: 178,
                    left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              '나이',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '20세',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '전화번호',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '010 - 1234 - 5678',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ])
              ],
            ),
          ),
          Expanded(flex: 2, child: Container()),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange[800]),
                  padding: MaterialStateProperty.all(EdgeInsets.only(
                      left: 110, right: 110, top: 0, bottom: 0)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExistingDongari()),
                  );
                },
                child: Text(
                  '내 정보가 맞아요',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
