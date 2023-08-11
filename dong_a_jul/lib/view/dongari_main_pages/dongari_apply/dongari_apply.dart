import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/apply_component/apply_next_button.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/dongari_apply_privacy.dart';
import 'package:flutter/material.dart';

class DongariApply extends StatefulWidget {
  const DongariApply({super.key});

  @override
  State<DongariApply> createState() => _DongariApplyState();
}

class _DongariApplyState extends State<DongariApply> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 32, right: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
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
            ),
            //todo 텍스트 필드에서 받아온 data를 Text()에 뿌려주기
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                    "게임개발 연합동아리 GameMakers에 지원해주셔서 감사합니다!\n\n📌 활동기간을 지키실 분만 지원 가능합니다.\n📌 7월 8일(토) 14시~17시 오프라인 행사(팀 배정)에 참석하실 분만 지원 가능합니다."),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
              ),
            ),
            Spacer(),
            NextButton(
                buttonText: '시작하기',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PersonalInformationAgreement()));
                }),
          ],
        ),
      ),
    );
  }
}
