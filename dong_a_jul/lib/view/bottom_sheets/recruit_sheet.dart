import 'dart:ui';

import 'package:dong_a_jul/view/bottom_sheets/bottom_interest/bottom_sheet_interest.dart';
import 'package:dong_a_jul/view/bottom_sheets/bottom_my/bottom_sheet_my.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/dongari_apply.dart';
import 'package:flutter/material.dart';

class RecruitmentBottomsheet extends StatefulWidget {
  const RecruitmentBottomsheet({super.key});

  @override
  State<RecruitmentBottomsheet> createState() => _RecruitmentBottomsheetState();
}

class _RecruitmentBottomsheetState extends State<RecruitmentBottomsheet> {
  late double _height;
  late double _blurValue = 0;

  final double _lowLimit = 70;
  final double _highLimit = 930;
  final double _upThresh = 120;
  final double _boundary = 800;
  final double _downThresh = 850;

  /// 100 -> 600, 550 -> 100 으로 애니메이션이 진행 될 때,
  /// 드래그로 인한 _height의 변화 방지
  bool _longAnimation = false;

  @override
  void initState() {
    super.initState();
    _height = _lowLimit;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0.0,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: _blurValue, sigmaY: _blurValue),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Opacity(
              opacity: 1,
              child: GestureDetector(
                  onVerticalDragUpdate: ((details) {
                    // delta: y축의 변화량, 우리가 보기에 위로 움직이면 양의 값, 아래로 움직이면 음의 값
                    double? delta = details.primaryDelta;
                    if (delta != null) {
                      /// Long Animation이 진행 되고 있을 때는 드래그로 높이 변화 방지,
                      /// 그리고 low limit 보다 작을 때 delta가 양수,
                      /// High limit 보다 크거나 같을 때 delta가 음수이면 드래그로 높이 변화 방지
                      if (_longAnimation ||
                          (_height <= _lowLimit && delta > 0) ||
                          (_height >= _highLimit && delta < 0)) return;
                      setState(() {
                        /// 600으로 높이 설정
                        if (_upThresh <= _height && _height <= _boundary) {
                          _height = _highLimit;
                          _longAnimation = true;
                          _blurValue = 10;
                        }

                        /// 100으로 높이 설정
                        else if (_boundary <= _height &&
                            _height <= _downThresh) {
                          _height = _lowLimit;
                          _longAnimation = true;
                          _blurValue = 0;
                        }

                        /// 기본 작동
                        else {
                          _height -= delta;
                        }
                      });
                    }
                  }),
                  child: AnimatedContainer(
                    curve: Curves.fastEaseInToSlowEaseOut,
                    onEnd: () {
                      if (_longAnimation) {
                        setState(() {
                          _longAnimation = false;
                        });
                      }
                    },
                    duration: const Duration(milliseconds: 1000),
                    width: MediaQuery.of(context).size.width,
                    height: _height,
                    child: Scaffold(
                        body: CustomScrollView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      slivers: [
                        SliverAppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.orange[800],
                          centerTitle: true,
                          elevation: 0,
                          title: TextButton(
                              child: Text(
                                '지원하기',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DongariApply(),
                                  ),
                                );
                              }),
                        ),
                        SliverFillRemaining()
                      ],
                    )),
                  )),
            ),
          ),
        ));
  }
}
