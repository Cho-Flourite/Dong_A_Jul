import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonRecommend extends StatelessWidget {
  const ButtonRecommend({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DongariMain()),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
          child: Stack(clipBehavior: Clip.none, children: [
            Positioned(
              child: Container(
                width: 150,
                height: 120,
                color: Colors.grey[200],
              ),
            ),
            Positioned(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 150,
                    height: 100,
                    color: Colors.orange,
                  )),
              top: 20,
            ),
            Positioned(
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20)),
                  child: Container(
                    width: 150,
                    height: 100,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '아롬',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black),
                        ),
                        SizedBox(height: 3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '#체육',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              '#체육',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            Text(
                              '#체육',
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              top: 40,
            ),
            Positioned(
              child: ClipRRect(
                child: Image.network(
                  'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg',
                  width: 70,
                  height: 70,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              left: 40,
            ),
          ]),
        ));
  }
}
