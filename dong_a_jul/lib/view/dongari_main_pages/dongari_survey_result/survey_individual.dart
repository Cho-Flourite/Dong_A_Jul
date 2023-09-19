import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey_result/dongari_survey_result_home.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey_result/individual_individual.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_recruitment/dongari_recruitment_period.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey/dongari_survey.dart';
import 'package:flutter/material.dart';

import '../dongari_apply/dongari_apply.dart';

class SurveyIndividual extends StatefulWidget {
  const SurveyIndividual({super.key});

  @override
  State<SurveyIndividual> createState() => _SurveyIndividualState();
}

class _SurveyIndividualState extends State<SurveyIndividual> {
  bool isFalse = false;
  bool isTrue = false;
  late List<bool> isSelected;

  @override
  void initState() {
    isSelected = [isFalse, isTrue];
    super.initState();
  }

  void toggleSelect(value) {
    if (value == 0) {
      isFalse = true;
      isTrue = false;
    } else if (value == 1) {
      isFalse = false;
      isTrue = true;
    }
    setState(() {
      isSelected = [isFalse, isTrue];
    });
  }

  final List<String> items = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: Container(
            color: Colors.white,
            child: ListView(
                children: List<Widget>.generate(items.length, (idx) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
                          radius: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '이지금',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('신청일 2023.08.01'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                          onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder:
                              (context) => IndividualIndividual()),
                          );},
                        ),
                      ),
                      ToggleButtons(
                        fillColor: Colors.white,
                        borderWidth: 0,
                        borderColor: Colors.white,
                        isSelected: isSelected,
                        onPressed: (index) => toggleSelect(index),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isFalse ? Colors.red : Colors.grey[200],
                              ),
                              child: Icon(
                                Icons.close,
                                color: isFalse ? Colors.white : Colors.red,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isTrue ? Colors.green : Colors.grey[200],
                              ),
                              child: Icon(
                                Icons.radio_button_unchecked,
                                color: isTrue ? Colors.white : Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Container(
                          color: Colors.grey[300],
                          height: 2,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }).toList())),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.75,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: Colors.orange[800],
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DongariApply()),
                      );
                    },
                    child: Text(
                      '임시저장',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: Colors.orange[800],
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DongariApply()),
                      );
                    },
                    child: Text(
                      '인원 확정',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
