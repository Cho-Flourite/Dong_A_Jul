import 'package:dong_a_jul/view/make_dongari_pages/make_dongari_members.dart';
import 'package:flutter/material.dart';

class MakeDongariCategory extends StatefulWidget {
  const MakeDongariCategory({super.key});

  @override
  State<MakeDongariCategory> createState() => _MakeDongariCategoryState();
}

class _MakeDongariCategoryState extends State<MakeDongariCategory> {
  String result = '';
  bool isAcademic = false;
  bool isAthletic = false;
  bool isReligion = false;
  bool isVolunteer = false;
  bool isShow = false;
  bool isCulture = false;
  late List<bool> isSelected;

  get _textFieldController => null;

  @override
  void initState() {
    isSelected = [
      isAcademic,
      isAthletic,
      isReligion,
      isVolunteer,
      isShow,
      isCulture
    ];
    super.initState();
  }

  void toggleSelect(value) {
    if (value == 0) {
      isAcademic = true;
      isAthletic = false;
      isReligion = false;
      isVolunteer = false;
      isShow = false;
      isCulture = false;
    } else if (value == 1) {
      isAcademic = false;
      isAthletic = true;
      isReligion = false;
      isVolunteer = false;
      isShow = false;
      isCulture = false;
    } else if (value == 2) {
      isAcademic = false;
      isAthletic = false;
      isReligion = true;
      isVolunteer = false;
      isShow = false;
      isCulture = false;
    } else if (value == 3) {
      isAcademic = false;
      isAthletic = false;
      isReligion = false;
      isVolunteer = true;
      isShow = false;
      isCulture = false;
    } else if (value == 4) {
      isAcademic = false;
      isAthletic = false;
      isReligion = false;
      isVolunteer = false;
      isShow = true;
      isCulture = false;
    } else if (value == 5) {
      isAcademic = false;
      isAthletic = false;
      isReligion = false;
      isVolunteer = false;
      isShow = false;
      isCulture = true;
    }
    setState(() {
      isSelected = [
        isAcademic,
        isAthletic,
        isReligion,
        isVolunteer,
        isShow,
        isCulture
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

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
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 24,right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            '동아리 카테고리',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Noto Sans',
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: _size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ToggleButtons(
                              fillColor: Colors.blue,
                              selectedColor: Colors.red,
                              isSelected: isSelected.sublist(0, 3),
                              onPressed: (index) => toggleSelect(index),
                              borderColor: Colors.white,
                              borderWidth: 0,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'pictures/image/category/one.png',
                                              width: _size.width * 0.2,
                                              height: _size.height * 0.03,
                                            ),
                                            SizedBox(height: 15),
                                            const Text(
                                              '학술',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'pictures/image/category/two.png',
                                              width: _size.width * 0.2,
                                              height: _size.height * 0.03,
                                            ),
                                            SizedBox(height: 15),
                                            const Text(
                                              '체육',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'pictures/image/category/three.png',
                                              width: _size.width * 0.2,
                                              height: _size.height * 0.03,
                                            ),
                                            SizedBox(height: 15),
                                            const Text(
                                              '봉사',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ToggleButtons(
                              fillColor: Colors.blue,
                              selectedColor: Colors.red,
                              isSelected: isSelected.sublist(3, 6),
                              onPressed: (index) => toggleSelect(index + 3),
                              borderColor: Colors.white,
                              borderWidth: 0,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'pictures/image/category/four.png',
                                              width: _size.width * 0.2,
                                              height: _size.height * 0.03,
                                            ),
                                            SizedBox(height: 15),
                                            const Text(
                                              '봉사',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'pictures/image/category/five.png',
                                              width: _size.width * 0.2,
                                              height: _size.height * 0.03,
                                            ),
                                            SizedBox(height: 15),
                                            const Text(
                                              '공연',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    elevation: 5,
                                    borderRadius: BorderRadius.circular(20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'pictures/image/category/six.png',
                                              width: _size.width * 0.2,
                                              height: _size.height * 0.03,
                                            ),
                                            SizedBox(height: 15),
                                            const Text(
                                              '문화',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '자유 해시태그',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Noto Sans',
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: _textFieldController, // 컨트롤러 연결
                            style: const TextStyle(fontSize: 18),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              hintText: '동아리를 나타낼 수 있는 해시태그',
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.orange), // Customize focused border color here
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(240, 240, 240, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '한줄소개',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Noto Sans',
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            maxLines: 3,
                            maxLength: 40,
                            controller: _textFieldController, // 컨트롤러 연결
                            style: const TextStyle(fontSize: 18),
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              hintText: '40자 이내로 동아리 소개를 적어주세요',
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.orange), // Customize focused border color here
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(240, 240, 240, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          children: [
                            IconButton(
                              color: Color.fromRGBO(210, 210, 210, 1),
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios,
                              ),
                            ),
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
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MakeDongariMembers()));
                          print('다음으로');
                        },
                        child: Container(
                          width: 334,
                          padding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 18),
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
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
