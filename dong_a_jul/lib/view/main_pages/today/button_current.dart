import 'package:dong_a_jul/main.dart';
import 'package:dong_a_jul/model/club.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonCurrent extends StatelessWidget {
  ButtonCurrent({super.key});

  @override
  Widget build(BuildContext context) {
    // clubs 리스트 가져옴
    RxList<Club> clubs = Get.find<DataController>().clubs;

    return GridView.count(
        crossAxisCount: 2,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 6/7,
        children: List.generate(clubs.length,
                (index) => CardButton(context, clubs[index])));
  }
}

Widget CardButton(BuildContext context, Club club) {
  return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DongariMain(club: club,)),
        );
      },
      child: Container(
        width: 170,
        child: Column(
          children: [
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: Stack(children: [
                    Positioned(
                      child: Image.network(
                        club.image.toString(),
                        width: 170,
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        child: Opacity(
                      opacity: 0.6,
                      child: Container(
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white10,
                            Colors.white,
                          ],
                        )),
                      ),
                    )),
                    Positioned(
                        child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.white.withOpacity(0.05),
                            Colors.white.withOpacity(0.1)
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    )),
                    Positioned(
                        top: 140,
                        left: 10,
                        child: Text(
                          club.name.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Image.network(club.image.toString()),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  club.name.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ));
}
