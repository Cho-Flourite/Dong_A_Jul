import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonMy extends StatelessWidget {
  const ButtonMy({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {

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
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
          ),
        ));
  }
}