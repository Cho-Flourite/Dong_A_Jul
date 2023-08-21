import 'dart:ui';

import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PostWrite extends StatefulWidget {
  const PostWrite({super.key});

  @override
  State<PostWrite> createState() => _PostWriteState();
}

class _PostWriteState extends State<PostWrite> {
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

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              '게시글 작성',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Container(
            color: Colors.white,
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InputBox('제목을 입력하세요'),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              child: TextField(
                                maxLength: 1000,
                                keyboardType: TextInputType.multiline,
                                maxLines: 15,
                                selectionHeightStyle: BoxHeightStyle.max,
                                decoration: InputDecoration(
                                  hintText: '게시글 내용을 입력하세요',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none),
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                                        child:
                                            Center(child: _boxContents[index]),
                                        decoration: index <=
                                                _pickedImgs.length - 1
                                            ? BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: FileImage(File(
                                                        _pickedImgs[index]
                                                            .path))))
                                            : null,
                                      ),
                                      color: Colors.grey,
                                      dashPattern: [5, 3],
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(10))).toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.92,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.08,
            color: Colors.orange[800],
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
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
      )
    ]);
  }
}
