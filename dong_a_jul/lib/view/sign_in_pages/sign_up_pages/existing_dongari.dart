import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/input_box_existing.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/interest_category.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:flutter/material.dart';

class ExistingDongari extends StatefulWidget {
  const ExistingDongari({super.key});

  @override
  State<ExistingDongari> createState() => _ExistingDongariState();
}

class _ExistingDongariState extends State<ExistingDongari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 320, bottom: 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InterestCategory()),
                          );
                        },
                        child: Text(
                          '건너뛰기',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800]),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, bottom: 0),
                      child: Text(
                        '기존 가입 동아리가',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 0, left: 20, bottom: 20),
                      child: Text(
                        '있다면 입력해주세요',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InputBoxExisting('동아리를 입력하세요'),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.only(
                                  left: 110, right: 110, top: 10, bottom: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: Text(
                            '다른 동아리도 추가할게요',
                            style: TextStyle(color: Colors.grey),
                          )),
                    )
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
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orange[800]),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 100, right: 100, top: 0, bottom: 0)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InterestCategory()),
                      );
                    },
                    child: Text(
                      '동아리 등록 완료',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 1, child: Container()),
            ],
          ),
        ),
      ]),
    );
  }
}
