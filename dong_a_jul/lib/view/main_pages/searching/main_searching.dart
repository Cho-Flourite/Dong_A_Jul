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
              child: Column(
                children: [
                  ToggleButtons(
                    fillColor: Colors.blue,
                    selectedColor: Colors.red,
                    isSelected: isSelected,
                    onPressed: toggleSelect,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/one.png',
                                width: 70,
                                height: 50,
                              ),
                              const Text(
                                '학술',
                                style: TextStyle(
                                    color: Colors.black,
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
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/two.png',
                                width: 70,
                                height: 50,
                              ),
                              const Text(
                                '체육',
                                style: TextStyle(
                                    color: Colors.black,
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
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/three.png',
                                width: 70,
                                height: 50,
                              ),
                              const Text(
                                '종교',
                                style: TextStyle(
                                    color: Colors.black,
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
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/four.png',
                                width: 70,
                                height: 50,
                              ),
                              const Text(
                                '봉사',
                                style: TextStyle(
                                    color: Colors.black,
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
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/five.png',
                                width: 70,
                                height: 50,
                              ),
                              const Text(
                                '공연',
                                style: TextStyle(
                                    color: Colors.black,
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
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/six.png',
                                width: 70,
                                height: 50,
                              ),
                              const Text(
                                '문화',
                                style: TextStyle(
                                    color: Colors.black,
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
