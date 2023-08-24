import 'dart:io';

import 'package:dong_a_jul/view/make_dongari_pages/make_dongari_category.dart';
import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MakeDongari extends StatefulWidget {
  const MakeDongari({super.key});

  @override
  State<MakeDongari> createState() => _DongariLogoState();
}

class _DongariLogoState extends State<MakeDongari> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
      resizeToAvoidBottomInset: true,
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 24),
                child: Container(
                  child: Text(
                    '동아리명',
                    style: TextStyle(
                      color: Color(0xFF000000), // Black color
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Container(
                  width: 342,
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFFF0F0F0),
                  ),
                  child: InputBox('동아리명을 입력하세요'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,top: 52),
                child: Container(
                  child: Text(
                    '동아리 로고',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24,top: 21),
                child: GestureDetector(
                  onTap: _pickImage,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      _image != null
                          ? Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFF0F0F0), // Light gray color
                                image: DecorationImage(
                                  image: FileImage(_image!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFFF0F0F0), // Light gray color
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                                size: 40,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32, top: 290),
                child: Container(
                  child: Row(
                    children: [
                      IconButton(
                        color: Color.fromRGBO(210, 210, 210, 1),
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 28,right: 28),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MakeDongariCategory()));
                    print('다음으로');
                  },
                  child: Container(
                    width: 334,
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xFFFF7922), // Orange color
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          '다음으로',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF), // White color
                            fontFamily: 'Noto Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
