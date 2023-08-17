import 'package:dong_a_jul/main.dart';
import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/interest_category.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:flutter/material.dart';

class SignUpComplete extends StatefulWidget {
  const SignUpComplete({super.key});

  @override
  State<SignUpComplete> createState() => _SignUpCompleteState();
}

class _SignUpCompleteState extends State<SignUpComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 4, child: Container()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.orange[800],
                  size: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '동아줄을 사용할',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  '준비가 완료되었어요!',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
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
                      left: 110, right: 110, top: 10, bottom: 10)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Text(
                  '홈 화면으로',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(flex: 4, child: Container()),
        ],
      ),
    );
  }
}
