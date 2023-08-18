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
        child: Material(
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
                Positioned(child: Opacity(
                  opacity: 0.6,
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white10,
                            Colors.white,
                          ],
                        )),
                  ),
                )),
                Positioned(
                    top: 100,
                    left: 10,
                    child: Text(
                      '아롬',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
          ),
        ));
  }
}