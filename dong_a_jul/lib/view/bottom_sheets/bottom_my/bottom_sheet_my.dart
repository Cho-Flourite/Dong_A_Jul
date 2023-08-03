import 'package:dong_a_jul/view/bottom_sheets/bottom_my/button_bottom_my.dart';
import 'package:flutter/material.dart';


class BottomMy extends StatelessWidget {
  const BottomMy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView(
        children: [
          SizedBox(height: 5),
          Text('  4개의 동아리에 가입했어요',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey[800]),),
          SizedBox(height: 5),
          ButtonBottomMy(),
          ButtonBottomMy(),
          ButtonBottomMy(),
          ButtonBottomMy(),
          ButtonBottomMy(),
        ],
      ),
    );
  }
}
