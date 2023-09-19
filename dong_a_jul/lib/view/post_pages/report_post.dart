import 'package:flutter/material.dart';

class ReportPost extends StatefulWidget {
  const ReportPost({super.key});

  @override
  State<ReportPost> createState() => _ReportPostState();
}

class _ReportPostState extends State<ReportPost> {
  bool one = false;
  bool two = false;
  bool three = false;
  bool four = false;
  bool five = false;
  bool six = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              '게시글 신고',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '광고성 콘텐츠가 포함되었어요.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  one = !one;
                                  two = false;
                                  three = false;
                                  four = false;
                                  five = false;
                                  six = false;
                                });
                              },
                              icon: Icon(
                                Icons.radio_button_checked,
                                color: one ? Colors.orange[800] : Colors.grey,
                              ))),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              color: Colors.grey[300],
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '남을 비방하는 콘텐츠예요.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  one = false;
                                  two = !two;
                                  three = false;
                                  four = false;
                                  five = false;
                                  six = false;
                                });
                              },
                              icon: Icon(
                                Icons.radio_button_checked,
                                color: two ? Colors.orange[800] : Colors.grey,
                              ))),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              color: Colors.grey[300],
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '선정적인 콘텐츠가 포함되었어요.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  one = false;
                                  two = false;
                                  three = !three;
                                  four = false;
                                  five = false;
                                  six = false;
                                });
                              },
                              icon: Icon(
                                Icons.radio_button_checked,
                                color: three ? Colors.orange[800] : Colors.grey,
                              ))),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              color: Colors.grey[300],
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '폭력적인 콘텐츠가 포함되었어요.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  one = false;
                                  two = false;
                                  three = false;
                                  four = !four;
                                  five = false;
                                  six = false;
                                });
                              },
                              icon: Icon(
                                Icons.radio_button_checked,
                                color: four ? Colors.orange[800] : Colors.grey,
                              ))),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              color: Colors.grey[300],
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              '부적절한 포교 목적이 의심돼요.',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  one = false;
                                  two = false;
                                  three = false;
                                  four = false;
                                  five = !five;
                                  six = false;
                                });
                              },
                              icon: Icon(
                                Icons.radio_button_checked,
                                color: five ? Colors.orange[800] : Colors.grey,
                              ))),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              color: Colors.grey[300],
                              height: 2,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                              height: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: six ? 200 : 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                            title: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                '기타',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {
                                  setState(() {
                                    one = false;
                                    two = false;
                                    three = false;
                                    four = false;
                                    five = false;
                                    six = !six;
                                  });
                                },
                                icon: Icon(
                                  Icons.radio_button_checked,
                                  color: six ? Colors.orange[800] : Colors.grey,
                                ))),
                        six
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: TextField(
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    hintText: '상세 사유를 작성해 주세요.',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none),
                                    fillColor: Colors.grey[200],
                                    filled: true,
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * 0.90,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: Colors.orange[800],
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '신고하기',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
