import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:flutter/material.dart';
import 'dart:io';
class PostRead extends StatefulWidget {
  const PostRead({super.key});

  @override
  State<PostRead> createState() => _PostReadState();
}

class _PostReadState extends State<PostRead> {
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
                      padding:
                      const EdgeInsets.only(top: 0, left: 20, bottom: 20),
                      child: Text(
                        '세종대학교 이메일',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    InputBox('이메일을 입력하세요'),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 50, left: 20, bottom: 20),
                      child: Text(
                        '비밀번호',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    InputBox('비밀번호를 입력하세요'),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.orange[800]),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 150, right: 150, top: 10, bottom: 10)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneVerification()),
                      );
                    },
                    child: Text(
                      '로그인',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
                flex: 1,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
