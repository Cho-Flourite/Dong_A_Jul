import 'package:dong_a_jul/view/bottom_sheets/bottom_interest/button_bottom_interest.dart';
import 'package:dong_a_jul/view/bottom_sheets/bottom_my/button_bottom_my.dart';
import 'package:flutter/material.dart';


class BottomInterest extends StatelessWidget {
  const BottomInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: ListView(
        children: [
          ButtonBottomInterest(),
          ButtonBottomInterest(),
          ButtonBottomInterest(),
          ButtonBottomInterest(),
          ButtonBottomInterest(),
          ButtonBottomInterest(),
          ButtonBottomInterest(),
        ],
      ),
    );
  }
}
