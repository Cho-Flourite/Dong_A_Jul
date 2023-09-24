import 'package:dong_a_jul/view/main_pages/today/button_current.dart';
import 'package:dong_a_jul/view/main_pages/today/button_my.dart';
import 'package:dong_a_jul/view/main_pages/today/button_recommend.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_main.dart';
import 'package:dong_a_jul/view/main_pages/today/button_recruiting.dart';
import 'package:dong_a_jul/view/main_pages/today/current_detail.dart';
import 'package:dong_a_jul/view/main_pages/today/recruiting_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../main.dart';
import '../../../model/club.dart';

class TodaysClub extends StatelessWidget {
  const TodaysClub({super.key});
  @override
  Widget build(BuildContext context) {

    RxList<Club> clubs = Get.find<DataController>().clubs;
 return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        ListTile(
          title: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.orange[800],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '동아줄에 오신 것을 환영합니다!',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
          ),
          tileColor: Colors.orange[800],
        ),
        Container(
          color: Colors.orange[800],
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ListTile(
                  title: Text(
                    //todo 최근 활동 동아리
                    ' 오늘의 동아리',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                GridView.count(
                  crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    childAspectRatio: 6/7,
                    children: List.generate(clubs.length,
                        (index) => CardButton(context, clubs[index])))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
