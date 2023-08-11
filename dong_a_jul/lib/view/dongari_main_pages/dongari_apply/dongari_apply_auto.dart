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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
        child: Column(
          children: [
            Spacer(),
            NextButton(
              buttonText: '네, 동의합니다',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionAnswer()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
