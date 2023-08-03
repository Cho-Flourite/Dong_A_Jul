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
        title: Text('MY',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: [
          MyProfileBox(),
          Container(
            color: Colors.grey[200],
            child: Column(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              '모집기간 수정',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              '모집기간 수정',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              '모집기간 수정',
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
