import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonBottomMy extends StatelessWidget {
  const ButtonBottomMy({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {

      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(20)),color: Colors.white,),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg'),
                radius: 40,
              ),
              title: Row(
                children: [
                  Text(
                    '아롬',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),

                ],
              ),
              subtitle: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                          color: Colors.grey[200],
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
                          color: Colors.grey[200],
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
                          color: Colors.grey[200],
                          child: Text(
                            '#프로그래밍',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),color: Colors.white,),

            child: Column(
              children: [
                ListTile(
                  title: Text('첫번째 게시글입니다.'),
                  trailing: Text('07.06'),
                ),
                ListTile(
                  title: Text('두번째 게시글입니다.'),
                  trailing: Text('07.07'),
                ),
                ListTile(
                  title: Text('세번째 게시글입니다.'),
                  trailing: Text('07.08'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
