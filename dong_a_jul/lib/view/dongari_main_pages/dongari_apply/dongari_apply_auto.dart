import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/apply_component/apply_next_button.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/dongari_apply.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/dongari_apply_answer.dart';
import 'package:flutter/material.dart';

class BasicInformationAuto extends StatefulWidget {
  const BasicInformationAuto({super.key});

  @override
  State<BasicInformationAuto> createState() => _BasicInformationAutoState();
}

class _BasicInformationAutoState extends State<BasicInformationAuto> {
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        '자동 입력 항목',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Stack(children: [
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      width: MediaQuery.of(context).size.width - 40,
                      height: 250,
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
                ]),
              ),
              Expanded(flex:2,child: Container()),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
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
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: NextButton(
                    buttonText: '확인',
                    isButtonEnabled: true,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuestionAnswer()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
