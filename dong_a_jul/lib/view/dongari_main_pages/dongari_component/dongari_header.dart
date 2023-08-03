import 'package:flutter/material.dart';

class DongariMainDongari extends StatefulWidget {
  const DongariMainDongari({super.key});

  @override
  State<DongariMainDongari> createState() => _DongariMainDongariState();
}

class _DongariMainDongariState extends State<DongariMainDongari> {
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
            ],
          ),
        ),
        trailing: Container(
          height:100,
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                    heart = Colors.redAccent;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: heart,
                  size: 50,
                ),
              ),
              SizedBox(width: 10,),
              Text(
                '$count',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
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
          ],
        ),
      ),
    );
  }
}
