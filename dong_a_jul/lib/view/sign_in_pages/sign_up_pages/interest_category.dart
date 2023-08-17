import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/information_check.dart';
import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/phone_verification.dart';
import 'package:dong_a_jul/view/sign_in_pages/sign_up_pages/sign_up_complete.dart';
import 'package:flutter/material.dart';

class InterestCategory extends StatefulWidget {
  const InterestCategory({super.key});

  @override
  State<InterestCategory> createState() => _InterestCategoryState();
}

class _InterestCategoryState extends State<InterestCategory> {
  bool _academic = true;
  bool _athletic = true;
  bool _religion = true;
  bool _volunteer = true;
  bool _show = true;
  bool _culture = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 0),
                      child: Text(
                        '관심 카테고리를',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Text(
                        '선택해주세요',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  _academic ? Colors.white : Colors.orange[800],
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {
                              setState(() {
                                _academic = !_academic;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _academic
                                    ? Colors.white
                                    : Colors.orange[800],
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'pictures/image/category/one.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    '학술',
                                    style: TextStyle(
                                        color: _academic
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _athletic ? Colors.white : Colors.orange[800],
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            onPressed: () {setState(() {
                              _athletic = !_athletic;
                            });},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _athletic
                                    ? Colors.white
                                    : Colors.orange[800],
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'pictures/image/category/two.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    '체육',
                                    style: TextStyle(
                                        color: _athletic
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor : _religion ? Colors.white : Colors.orange[800],
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {setState(() {
                              _religion = !_religion;
                            });},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _religion
                                    ? Colors.white
                                    : Colors.orange[800],
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'pictures/image/category/three.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    '종교',
                                    style: TextStyle(
                                        color: _religion
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _volunteer ? Colors.white : Colors.orange[800],
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {setState(() {
                              _volunteer = !_volunteer;
                            });},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _volunteer
                                    ? Colors.white
                                    : Colors.orange[800],
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'pictures/image/category/four.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    '봉사',
                                    style: TextStyle(
                                        color: _volunteer
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _show ? Colors.white : Colors.orange[800],
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {setState(() {
                              _show = !_show;
                            });},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _show
                                    ? Colors.white
                                    : Colors.orange[800],
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'pictures/image/category/five.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    '공연',
                                    style: TextStyle(
                                        color: _show
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _culture ? Colors.white : Colors.orange[800],
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            onPressed: () {setState(() {
                              _culture = !_culture;
                            });},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: _culture
                                    ? Colors.white
                                    : Colors.orange[800],
                              ),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'pictures/image/category/six.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    '문화',
                                    style: TextStyle(
                                        color: _culture
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(flex: 2, child: Container()),
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orange[800]),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 120, right: 120, top: 10, bottom: 10)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpComplete()),
                      );
                    },
                    child: Text(
                      '준비 완료!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 2, child: Container()),
            ],
          ),
        ),
      ]),
    );
  }
}
