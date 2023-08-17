import 'package:dong_a_jul/view/post_pages/post_read.dart';
import 'package:dong_a_jul/view/post_pages/post_write.dart';
import 'package:dong_a_jul/view/sign_in_pages/login_home.dart';
import 'package:dong_a_jul/view/sign_in_pages/login_sejong.dart';
import 'package:dong_a_jul/view/profile_pages/profile_my.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'MY',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          MyProfileBox(),
          Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginHome()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              '로그인 기능',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostWrite()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              '게시글 작성 페이지',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostRead()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              '게시글 열람 페이지',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
