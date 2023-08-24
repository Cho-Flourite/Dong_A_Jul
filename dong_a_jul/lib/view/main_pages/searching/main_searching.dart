import 'package:dong_a_jul/view/main_pages/today/button_my.dart';
import 'package:dong_a_jul/view/main_pages/searching/button_recruit.dart';
import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  String result = '';
  bool isAcademic = false;
  bool isAthletic = false;
  bool isReligion = false;
  bool isVolunteer = false;
  bool isShow = false;
  bool isCulture = false;
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [
      isAcademic,
      isAthletic,
      isReligion,
      isVolunteer,
      isShow,
      isCulture
    ];
    super.initState();
  }

  void toggleSelect(value) {
    if (value == 0) {
      isAcademic = true;
      isAthletic = false;
      isReligion = false;
      isVolunteer = false;
      isShow = false;
      isCulture = false;
    } else if (value == 1) {
      isAcademic = false;
      isAthletic = true;
      isReligion = false;
      isVolunteer = false;
      isShow = false;
      isCulture = false;
    } else if (value == 2) {
      isAcademic = false;
      isAthletic = false;
      isReligion = true;
      isVolunteer = false;
      isShow = false;
      isCulture = false;
    } else if (value == 3) {
      isAcademic = false;
      isAthletic = false;
      isReligion = false;
      isVolunteer = true;
      isShow = false;
      isCulture = false;
    } else if (value == 4) {
      isAcademic = false;
      isAthletic = false;
      isReligion = false;
      isVolunteer = false;
      isShow = true;
      isCulture = false;
    } else if (value == 5) {
      isAcademic = false;
      isAthletic = false;
      isReligion = false;
      isVolunteer = false;
      isShow = false;
      isCulture = true;
    }
    setState(() {
      isSelected = [
        isAcademic,
        isAthletic,
        isReligion,
        isVolunteer,
        isShow,
        isCulture
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: SearchBar(
            leading: Icon(
              Icons.search,
              color: Colors.orange[800],
            ),
            hintText: '관심있는 동아리를 검색해보세요',
            elevation: MaterialStateProperty.all(0),
            constraints: const BoxConstraints(
              maxHeight: 40,
            ),
          ),
          tileColor: Colors.orange[800],
        ),
        Container(
          color: Colors.orange[800],
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: Colors.grey[200],
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ToggleButtons(
                      fillColor: Colors.grey[200],
                      borderWidth: 0,
                      borderColor: Colors.grey[200],
                      isSelected: isSelected.sublist(0, 3),
                      onPressed: (index) => toggleSelect(index),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isAcademic
                                  ? Colors.orange[800]
                                  : Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                isAcademic
                                    ? Image.asset(
                                        'pictures/image/category/one_reverse.png',
                                        width: 70,
                                        height: 50,
                                      )
                                    : Image.asset(
                                        'pictures/image/category/one.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                Text(
                                  '학술',
                                  style: TextStyle(
                                      color: isAcademic
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isAthletic
                                  ? Colors.orange[800]
                                  : Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                isAthletic
                                    ? Image.asset(
                                        'pictures/image/category/two_reverse.png',
                                        width: 70,
                                        height: 50,
                                      )
                                    : Image.asset(
                                        'pictures/image/category/two.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                Text(
                                  '체육',
                                  style: TextStyle(
                                      color: isAthletic
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isReligion
                                  ? Colors.orange[800]
                                  : Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                isReligion
                                    ? Image.asset(
                                        'pictures/image/category/three_reverse.png',
                                        width: 70,
                                        height: 50,
                                      )
                                    : Image.asset(
                                        'pictures/image/category/three.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                Text(
                                  '종교',
                                  style: TextStyle(
                                      color: isReligion
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ToggleButtons(
                      borderWidth: 0,
                      fillColor: Colors.grey[200],
                      borderColor: Colors.grey[200],
                      isSelected: isSelected.sublist(3, 6),
                      onPressed: (index) => toggleSelect(index + 3),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isVolunteer
                                  ? Colors.orange[800]
                                  : Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                isVolunteer
                                    ? Image.asset(
                                        'pictures/image/category/four_reverse.png',
                                        width: 70,
                                        height: 50,
                                      )
                                    : Image.asset(
                                        'pictures/image/category/four.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                Text(
                                  '봉사',
                                  style: TextStyle(
                                      color: isVolunteer
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: isShow ? Colors.orange[800] : Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                isShow
                                    ? Image.asset(
                                        'pictures/image/category/five_reverse.png',
                                        width: 70,
                                        height: 50,
                                      )
                                    : Image.asset(
                                        'pictures/image/category/five.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                Text(
                                  '공연',
                                  style: TextStyle(
                                      color:
                                          isShow ? Colors.white : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:
                                  isCulture ? Colors.orange[800] : Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                isCulture
                                    ? Image.asset(
                                        'pictures/image/category/six_reverse.png',
                                        width: 70,
                                        height: 50,
                                      )
                                    : Image.asset(
                                        'pictures/image/category/six.png',
                                        width: 70,
                                        height: 50,
                                      ),
                                Text(
                                  '문화',
                                  style: TextStyle(
                                      color: isCulture
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.white,
          child: const Column(
            children: [
              ButtonRecruit(),
              ButtonRecruit(),
              ButtonRecruit(),
              ButtonRecruit(),
              ButtonRecruit(),
            ],
          ),
        ),
      ],
    );
  }
}
