import 'package:flutter/material.dart';

class DongariHeader extends StatefulWidget {
  const DongariHeader({super.key});

  @override
  State<DongariHeader> createState() => _DongariHeaderState();
}

class _DongariHeaderState extends State<DongariHeader> {
  int count = 0;
  Color? heart = Colors.grey[400];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
              radius: 40,
            ),
          ),
          Positioned(
            top: 14,
            left: 100,
            child: Text(
              '아롬',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          Positioned(
            left: 320,
            top: 5,
            child: Column(
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
                    size: 45,
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    SizedBox(width: 12,),
                    Text(
                      '$count',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 100,
            top: 45,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                    color: Colors.lightGreenAccent,
                    child: Text(
                      '# 프로그래밍',
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
                    color: Colors.lightGreenAccent,
                    child: Text(
                      '# 프로그래밍',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
