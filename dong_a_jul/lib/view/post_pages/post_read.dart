import 'dart:ui';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dong_a_jul/view/sign_in_pages/input_box.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PostRead extends StatefulWidget {
  const PostRead({super.key});

  @override
  State<PostRead> createState() => _PostReadState();
}

class _PostReadState extends State<PostRead> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  List imageList = [
    'http://news.samsungdisplay.com/wp-content/uploads/2018/08/8.jpg',
    'http://news.samsungdisplay.com/wp-content/uploads/2018/08/14.jpg',
    'http://news.samsungdisplay.com/wp-content/uploads/2018/08/3-1.jpg',
    'http://news.samsungdisplay.com/wp-content/uploads/2018/08/1.jpg',
  ];

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: imageList.map(
            (imgLink) {
          return Builder(
            builder: (context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    imgLink,
                  ),
                ),
              );
            },
          );
        },
      ).toList(),
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12,
              height: 12,
              margin:
              const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              '게시글',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.black,
              )
            ],
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    sliderWidget(),
                    sliderIndicator(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text("Welcome to the carousel slide app",
                    style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.92,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.08,
          color: Colors.grey[200],
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '  댓글을 작성해 보세요',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
