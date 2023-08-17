import 'dart:ui';

import 'package:dong_a_jul/view/bottom_sheets/bottom_interest/bottom_sheet_interest.dart';
import 'package:dong_a_jul/view/bottom_sheets/bottom_my/bottom_sheet_my.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/dongari_apply.dart';
import 'package:flutter/material.dart';

class DongariApplyButton extends StatefulWidget {
  const DongariApplyButton({super.key});

  @override
  State<DongariApplyButton> createState() => _DongariApplyButtonState();
}

class _DongariApplyButtonState extends State<DongariApplyButton> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height*0.92,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.08,
          color: Colors.orange[800],
          child: TextButton(
            onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder:
                (context) => DongariApply()),
            );},
            child: Text(
              '지원하기',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }}
