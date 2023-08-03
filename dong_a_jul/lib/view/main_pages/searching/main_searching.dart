import 'package:dong_a_jul/view/main_pages/today/button_my.dart';
import 'package:dong_a_jul/view/main_pages/searching/button_recruit.dart';
import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class Searching extends StatelessWidget {
  const Searching({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: SearchBar(
            leading: Icon(
              Icons.search,
              color: Colors.orange[800],
            ),
            hintText: '관심있는 동아리를 검색해보세요',
            elevation: MaterialStateProperty.all(0),
            constraints: BoxConstraints(
              maxHeight: 40,
            ),
          ),
          tileColor: Colors.orange[800],
        ),
        Container(
          color: Colors.orange[800],
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: Colors.grey[200],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/one.png',
                                width: 70,
                                height: 50,
                              ),
                              Text(
                                '학술',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/two.png',
                                width: 70,
                                height: 50,
                              ),
                              Text(
                                '체육',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/three.png',
                                width: 70,
                                height: 50,
                              ),
                              Text(
                                '종교',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              color: Colors.grey[200],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/four.png',
                                width: 70,
                                height: 50,
                              ),
                              Text(
                                '봉사',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/five.png',
                                width: 70,
                                height: 50,
                              ),
                              Text(
                                '공연',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'pictures/image/category/six.png',
                                width: 70,
                                height: 50,
                              ),
                              Text(
                                '체육',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            ' 모집중인 동아리',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
        ),
        Container(
          color: Colors.grey[200],
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ButtonMy(),
                ButtonMy(),
                ButtonMy(),
                ButtonMy(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              ButtonRecruit(),
              ButtonRecruit(),
              ButtonRecruit(),
              ButtonRecruit(),
              ButtonRecruit(),
            ],
          ),
        ),
      ],
    );
  }
}
