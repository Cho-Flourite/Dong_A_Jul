import 'package:flutter/material.dart';

class MyProfileBox extends StatefulWidget {
  const MyProfileBox({super.key});

  @override
  State<MyProfileBox> createState() => _MyProfileBoxState();
}

class _MyProfileBoxState extends State<MyProfileBox> {
  int count = 0;
  Color? heart = Colors.grey[400];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
          radius: 40,
        ),
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 7),
          child: Row(
            children: [
              Text(
                '아롬',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 100,
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text('편집 ',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                        color: Colors.grey,
                      )
                    ],
                  ))
            ],
          ),
        ),
        subtitle: Column(
          children: [
            Row(
              children: [
                Text(
                  '관심 카테고리',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    color: Colors.greenAccent,
                    child: Text(
                      '#프로그래밍',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    color: Colors.greenAccent,
                    child: Text(
                      '#프로그래밍',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
