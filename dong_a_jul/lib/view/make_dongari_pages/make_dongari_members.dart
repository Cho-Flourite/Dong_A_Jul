import 'package:dong_a_jul/view/make_dongari_pages/make_dongari_category.dart';
import 'package:dong_a_jul/view/make_dongari_pages/make_dongari_recruitment_period.dart';
import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:flutter/material.dart';

class MakeDongariMembers extends StatefulWidget {
  const MakeDongariMembers({super.key});

  @override
  State<MakeDongariMembers> createState() => _MakeDongariMembersState();
}

enum Char { A, B, C, D }

class _MakeDongariMembersState extends State<MakeDongariMembers> {
  Char _char = Char.A; // 라디오 버튼의 선택 초기화
  var switchValue = false;

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
            '동아리 개설하기',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 24),
                      child: Container(
                        child: Text(
                          '규모',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontFamily: 'Noto Sans',
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, top: 16),
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          width: 342,
                          height: 116,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border:
                                Border.all(width: 2, color: Color(0xFFF0F0F0)),
                          ),
                          child: Column(
                            // Use Row instead of Column
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: RadioListTile(
                                      title: Text("10명 미만"),
                                      value: Char.A,
                                      groupValue: _char,
                                      onChanged: (Char? value) {
                                        setState(() {
                                          _char = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RadioListTile(
                                      title: Text("10~30명"),
                                      value: Char.B,
                                      groupValue: _char,
                                      onChanged: (Char? value) {
                                        setState(() {
                                          _char = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: RadioListTile(
                                      title: Text("30~50명"),
                                      value: Char.C,
                                      groupValue: _char,
                                      onChanged: (Char? value) {
                                        setState(() {
                                          _char = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RadioListTile(
                                      title: Text("50명 이상"),
                                      value: Char.D,
                                      groupValue: _char,
                                      onChanged: (Char? value) {
                                        setState(() {
                                          _char = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, top: 36, right: 24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '동아리방 유뮤',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: 'Noto Sans',
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Transform.scale(
                                scale: 1.5,
                                child: Switch(
                                  value: switchValue,
                                  onChanged: (value) {
                                    setState(() {
                                      switchValue = value;
                                    });
                                  },
                                  activeColor: Color.fromRGBO(124, 79, 255, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    if (switchValue)
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Text(
                                '동아리방 위치',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: 'Noto Sans',
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 4, right: 4, top: 16),
                              child: InputBox('동아리방 위치를 적어주세요'),
                            ),
                          ],
                        ),
                      ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, right: 28,bottom: 36),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MakeDongariRecruitmentPeriod()));
                          print('다음으로');
                        },
                        child: Container(
                          width: 334,
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xFFFF7922), // Orange color
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '다음으로',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF), // White color
                                  fontFamily: 'Noto Sans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
