import 'package:flutter/material.dart';

import '../../dongari_main_pages/dongari_main.dart';

class ButtonCurrent extends StatelessWidget {
  const ButtonCurrent({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DongariMain()),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            child: Image.network(
              'http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
