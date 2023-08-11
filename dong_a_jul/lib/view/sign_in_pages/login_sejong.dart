import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:flutter/material.dart';

class LoginSejong extends StatefulWidget {
  const LoginSejong({super.key});

  @override
  State<LoginSejong> createState() => _LoginSejongState();
}

class _LoginSejongState extends State<LoginSejong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 20, bottom: 20),
                  child: Text(
                    '세종대학교 이메일',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                InputBox('이메일을 입력하세요'),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, bottom: 20),
                  child: Text(
                    '비밀번호',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                InputBox('비밀번호를 입력하세요'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange[800]),
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 150, right: 150, top: 10, bottom: 10)),

                  ),
                  onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder:
                      (context) => PhoneVerification()),
                  );},
                  child: Text(
                    '로그인',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
