import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonMy extends StatelessWidget {
  const ButtonMy({super.key});

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
          borderRadius: BorderRadius.circular(20),
          child: Container(
            child: Stack(children: [
              Positioned(
                child: Image.network(
                  'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(child: Opacity(
                opacity: 0.3,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.grey,
                          Colors.white,
                        ],
                      )),
                ),
              )),
              Positioned(
                  top: 120,
                  left: 20,
                  child: Text(
                    '아롬',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ]),
          ),
        ));
  }
}
