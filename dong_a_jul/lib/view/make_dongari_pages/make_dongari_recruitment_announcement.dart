import 'dart:io';
import 'dart:ui';
import 'package:dong_a_jul/view/make_dongari_pages/make_dongari_component/text_style.dart';
import 'package:dong_a_jul/view/make_dongari_pages/make_dongari_rule.dart';
import 'package:dong_a_jul/view/profile_pages/profile.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';

class MakeDongariRecruitmentAnnouncement extends StatefulWidget {
  const MakeDongariRecruitmentAnnouncement({super.key});

  @override
  State<MakeDongariRecruitmentAnnouncement> createState() =>
      _MakeDongariRecruitmentAnnouncementState();
}

class _MakeDongariRecruitmentAnnouncementState
    extends State<MakeDongariRecruitmentAnnouncement> {
  get _textFieldController => null;
  final ImagePicker _picker = ImagePicker();
  List<XFile> _pickedImgs = [];

  Future<void> loadImages() async {
    final List<XFile> images = await _picker.pickMultiImage();
    if (images != null) {
      setState(() {
        _pickedImgs = images;
        _boxContents = [
          IconButton(
              onPressed: () {
                loadImages();
              },
              icon: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      shape: BoxShape.circle),
                  child: Icon(
                    CupertinoIcons.camera,
                    color: Colors.black,
                  ))),
          Container(),
          Container(),
          _pickedImgs.length <= 4
              ? Container()
              : FittedBox(
                  child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          shape: BoxShape.circle),
                      child: Text(
                        '+${(_pickedImgs.length - 4).toString()}',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ))),
        ];
      });
    }
  }

  late List<Widget> _boxContents = [
    IconButton(
        onPressed: () {
          loadImages();
        },
        icon: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6), shape: BoxShape.circle),
            child: Icon(
              CupertinoIcons.camera,
              color: Colors.black,
            ))),
    Container(),
    Container(),
    _pickedImgs.length <= 4
        ? Container()
        : FittedBox(
            child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    shape: BoxShape.circle),
                child: Text(
                  '+${(_pickedImgs.length - 4).toString()}',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ))),
  ];
  bool isButtonPressed = false; // floating action button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          '동아리 개설하기',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 24, right: 24),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              '모집 공고 작성',
                              style: MakeDongariTextStyle,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _textFieldController, // 컨트롤러 연결
                            style: const TextStyle(fontSize: 18),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              hintText: '제목을 입력하세요',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(240, 240, 240, 1)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors
                                        .orange), // Customize focused border color here
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(240, 240, 240, 1),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: TextFormField(
                            maxLines: 15,
                            controller: _textFieldController, // 컨트롤러 연결
                            style: const TextStyle(fontSize: 18),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              hintText:
                                  '상세 내용에는 운영 주체, 활동 내용, 모집 절차, 회비와 같은 항목이 반드시 포함되어야 합니다. \n 상세 준칙은 동아리 개설 준칙을 참고해주세요.',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Noto Sans',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(240, 240, 240, 1)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors
                                        .orange), // Customize focused border color here
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(240, 240, 240, 1),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.white,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: List.generate(
                                          4,
                                          (index) => DottedBorder(
                                              child: Container(
                                                height: 90,
                                                width: 90,
                                                child: Center(
                                                    child: _boxContents[index]),
                                                decoration: index <=
                                                        _pickedImgs.length - 1
                                                    ? BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: FileImage(
                                                                File(_pickedImgs[
                                                                        index]
                                                                    .path))))
                                                    : null,
                                              ),
                                              color: Colors.grey,
                                              dashPattern: [5, 3],
                                              borderType: BorderType.RRect,
                                              radius: Radius.circular(10)))
                                      .toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.08,
                              color: Colors.orange[800],
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyProfile()),
                                  );
                                },
                                child: Text(
                                  '게시글 등록',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (!isButtonPressed)
                  Container(
                    color: Colors.grey.withOpacity(0.6), // 회색 화면의 색상과 투명도 조절
                  ),
                if (!isButtonPressed)
                  Container(
                    child: Positioned(
                      bottom: 190,
                      left: 90,
                      child: Container(
                        height: 101,
                        width: 262,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(0),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(24),
                            child: Text(
                              '아이콘을 눌러 동아리 개설 준칙을 참고할 수 있어요',
                              style: MakeDongariTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Stack(children: [
        Positioned(
          bottom: 130,
          left: 340,
          child: FloatingActionButton(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "pictures/image/popup.jpg",
                color: Colors.white.withOpacity(0),
                colorBlendMode: BlendMode.srcATop,
              ),
            ),
            onPressed: () {
              setState(() {
                isButtonPressed = true;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MakeDongariRule()));
              });
              print('플러팅 액션버튼');
            },
          ),
        ),
      ]),
    );
  }
}