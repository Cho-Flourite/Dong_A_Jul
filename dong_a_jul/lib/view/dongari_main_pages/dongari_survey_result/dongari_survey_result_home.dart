import 'package:dong_a_jul/view/bottom_sheets/bottom_interest/bottom_sheet_interest.dart';
import 'package:dong_a_jul/view/bottom_sheets/bottom_my/bottom_sheet_my.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey_result/survey_individual.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_survey_result/survey_summary.dart';
import 'package:flutter/material.dart';

import '../dongari_apply/dongari_apply.dart';

class DongariSurveyResult extends StatefulWidget {
  const DongariSurveyResult({super.key});

  @override
  State<DongariSurveyResult> createState() => _DongariSurveyResultState();
}

class _DongariSurveyResultState extends State<DongariSurveyResult> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          elevation: 0,
          title: Text(
            '신청 폼 결과',
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorWeight: 4.0,
            indicatorColor: Colors.orange[800],
            labelPadding: EdgeInsets.all(3),
            padding: EdgeInsets.all(3),
            tabs: [
              Text(
                '전체/요약',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                '개별',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [SurveySummary(), SurveyIndividual()],
        ),
      ),
    );
  }
}
