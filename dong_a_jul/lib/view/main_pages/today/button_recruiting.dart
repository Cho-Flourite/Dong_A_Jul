import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonRecruiting extends StatelessWidget {
  const ButtonRecruiting({super.key});

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
          width: 130,
          child: Column(
            children: [
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Stack(children: [
                      Positioned(
                        child: Image.network(
                          'https://www.kindacode.com/wp-content/uploads/2022/07/bottle.jpeg',
                          width: 130,
                          height: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.white.withOpacity(0.1),Colors.white.withOpacity(0.7)],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter
                                )
                            ),
                          )),
                      Positioned(
                          top: 100,
                          left: 10,
                          child: Text(
                            '아롬',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          )),
                    ]),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                '세종극회 "만남 45기" 모집합니다~~~~~',
                style: TextStyle(color: Colors.black, fontSize: 12),
              )
            ],
          ),
        ));
  }
}