import 'package:flutter/material.dart';

class MakeDongariRule extends StatelessWidget {
  const MakeDongariRule({super.key});

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
          '동아리 개설 준칙',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Text(
                    "게임개발 연합동아리 GameMakers에 지원해주셔서 감사합니다!\n\n📌 활동기간을 지키실 분만 지원 가능합니다.\n📌 7월 8일(토) 14시~17시 오프라인 행사(팀 배정)에 참석하실 분만 지원 가능합니다. 게임개발 연합동아리 GameMakers에 지원해주셔서 감사합니다!\n\n📌 활동기간을 지키실 분만 지원 가능합니다.\n📌 7월 8일(토) 14시~17시 오프라인 행사(팀 배정)에 참석하실 분만 지원 가능합니다. 게임개발 연합동아리 GameMakers에 지원해주셔서 감사합니다!\n\n📌 활동기간을 지키실 분만 지원 가능합니다.\n📌 7월 8일(토) 14시~17시 오프라인 행사(팀 배정)에 참석하실 분만 지원 가능합니다. 게임개발 연합동아리 GameMakers에 지원해주셔서 감사합니다!\n\n📌 활동기간을 지키실 분만 지원 가능합니다.\n📌 7월 8일(토) 14시~17시 오프라인 행사(팀 배정)에 참석하실 분만 지원 가능합니다.  "),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
