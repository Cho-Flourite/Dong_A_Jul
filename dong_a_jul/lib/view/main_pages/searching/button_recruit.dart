import 'package:dong_a_jul/main.dart';
import 'package:dong_a_jul/model/club.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonRecruit extends StatelessWidget {
  final int selectedCategory; // 카테고리 지정변수
  final String search; // 검색

  const ButtonRecruit(
      {super.key, required this.selectedCategory, required this.search});

  @override
  Widget build(BuildContext context) {
    RxList<Club> clubs = Get.find<DataController>().clubs;

    // 카테고리별로 필터링 학,체,종,공,봉,문
    List<Club> filteredClubs = clubs.where((club) {
      if (selectedCategory == 0) {
        return club.tag.toString() == '학술';
      } else if (selectedCategory == 1) {
        return club.tag.toString() == '체육';
      } else if (selectedCategory == 2) {
        return club.tag.toString() == '종교';
      } else if (selectedCategory == 3) {
        return club.tag.toString() == '봉사';
      } else if (selectedCategory == 4) {
        return club.tag.toString() == '공연';
      } else if (selectedCategory == 5) {
        return club.tag.toString() == '문화';
      }

      return true;
    }).toList();

    // 검색결과 필터링
    List<Club> searchClubs = clubs.where((club) {
      return search.isNotEmpty && club.name!.contains(search);
    }).toList();

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: searchClubs.length > 0 ? search.length : filteredClubs.length,
      itemBuilder: searchClubs.length > 0
          ? (context, index) {
        return OnlineCardButton(context, searchClubs[index]);
      }
          : (context, index) {
        return OnlineCardButton(context, filteredClubs[index]);
      },
    );
  }
}

Widget OnlineCardButton(BuildContext context, Club club) {
  return OutlinedButton(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: 
          (context) => DongariMain(club: club)),
      );
    },
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            club.image.toString(),
          ),
          radius: 40,
        ),
        title: Row(
          children: [
            Text(
              club.name.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                color: Colors.deepPurpleAccent,
                child: Text(
                  '모집중',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Icons.favorite,
              color: Colors.grey[300],
            ),
          ],
        ),
        subtitle: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    color: Colors.grey[200],
                    child: Text(
                      club.tag.toString(),
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                club.oneline.toString(),
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}