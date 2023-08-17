import 'package:dong_a_jul/main.dart';
import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/login_sejong.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/interest_category.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:flutter/material.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({super.key});

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex:1,child: Container()),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 150,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'pictures/image/logo_contrast.png',
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '동아리 사이를 연결하다',
                    style: TextStyle(fontSize: 15,color: Colors.grey),
                  ),
                  Text(
                    '동아줄',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[800]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(flex:1,child: Container()),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.orange[800]),
                  padding: MaterialStateProperty.all(EdgeInsets.only(
                      left: 70, right: 70, top: 10, bottom: 10)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginSejong()),
                  );
                },
                child: Text(
                  '학교 아이디로 로그인',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(flex:3,child: Container()),
        ],
      ),
    );
  }
}
