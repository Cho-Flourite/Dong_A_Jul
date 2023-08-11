import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/information_check.dart';
import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:flutter/material.dart';

class AgeGender extends StatefulWidget {
  const AgeGender({super.key});

  @override
  State<AgeGender> createState() => _AgeGenderState();
}

class _AgeGenderState extends State<AgeGender> {
  bool _male_color = true;
  bool _female_color = true;
  bool _male_color_icon = true;
  bool _female_color_icon = true;

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
                  padding:
                      const EdgeInsets.only(top: 150, left: 20, bottom: 0),
                  child: Text(
                    '나이와 성별을',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 0, left: 20, bottom: 40),
                  child: Text(
                    '입력해주세요',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, bottom: 20),
                  child: Text(
                    '나이',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                InputBox('나이를 입력하세요'),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                  child: Text(
                    '성별',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(children: [
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _male_color ? Colors.grey[200]: Colors.orange[800],
                              ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _male_color = !_male_color;
                                    _male_color_icon = !_male_color_icon;
                                  });
                                },
                                icon: Icon(Icons.male),
                                iconSize: 140,
                                color: _male_color_icon ? Colors.blue: Colors.white,
                              )),
                        ),
                      ),
                      Positioned(
                        child: Text(
                          '남성',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        top: 150,left: 85,)
                    ]),
                    Stack(children: [
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:_female_color ? Colors.grey[200]: Colors.orange[800],
                              ),
                              child: IconButton(
                                onPressed: () { setState(() {
                                  _female_color = !_female_color;
                                  _female_color_icon = !_female_color_icon;
                                });},
                                icon: Icon(Icons.female),
                                iconSize: 140,
                                color: _female_color_icon ? Colors.pink: Colors.white,
                              )),
                        ),
                      ),
                      Positioned(
                          child: Text(
                        '여성',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      top: 150,left: 85,)
                    ]),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120),
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
                          builder: (context) => InformationCheck()),
                    );
                  },
                  child: Text(
                    '다음으로',
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
