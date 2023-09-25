import 'package:flutter/material.dart';

import '../../../model/club.dart';

class DongariHeader extends StatefulWidget {
  const DongariHeader({required this.club, super.key});

  final Club club;
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  widget.club.image.toString(),),
                radius: 30,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13,bottom: 5),
                    child: Text(
                      widget.club.name.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                          color: Colors.lightGreenAccent,
                          child: Text(
                              widget.club.tag.toString(),
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    /*  ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                          color: Colors.lightGreenAccent,
                          child: Text(
                            '# 프로그래밍',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                      size: 35,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
          ),

        ],
      ),
    );
  }
}
