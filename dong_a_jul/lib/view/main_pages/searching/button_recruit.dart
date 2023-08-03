import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonRecruit extends StatelessWidget {
  const ButtonRecruit({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DongariMain()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Colors.white,
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
                color: Colors.grey,
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                '123',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
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
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  '가나다라마바사 아자차카타파하 가나다라마바사 아자차카타파하',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
