import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/apply_component/apply_next_button.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/dongari_apply_auto.dart';
import 'package:flutter/material.dart';

class PersonalInformationAgreement extends StatelessWidget {
  const PersonalInformationAgreement({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Text(
                      '개인정보 수집 및 동의서',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 55, horizontal: 20),
                child: Text(
                    '본 폼을 통해 아롬은 전화번호 기록을 수집하고 있습니다. 수집된 정보는 서류 심사 목적을 위해 사용하며, 3개월동안 보유 및 이용합니다.'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(240, 240, 240, 1),
                ),
              ),
            ),
            Expanded(flex: 2, child: Container()),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        color: Color.fromRGBO(210, 210, 210, 1),
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: NextButton(
                buttonText: '네, 동의합니다',
                isButtonEnabled: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BasicInformationAuto()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
