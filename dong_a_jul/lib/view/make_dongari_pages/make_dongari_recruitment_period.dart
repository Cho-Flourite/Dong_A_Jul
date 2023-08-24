import 'package:dong_a_jul/view/make_dongari_pages/make_dongari_members.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class MakeDongariRecruitmentPeriod extends StatefulWidget {
  const MakeDongariRecruitmentPeriod({super.key});

  @override
  State<MakeDongariRecruitmentPeriod> createState() =>
      _MakeDongariRecruitmentPeriodState();
}

class _MakeDongariRecruitmentPeriodState
    extends State<MakeDongariRecruitmentPeriod> {
  var switchValue = false;
  bool calendarEnabled = false;

  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  DateTime focusedDay = DateTime.now();

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
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 24),
                child: Container(
                  child: Text(
                    '모집 기간',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontFamily: 'Noto Sans',
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(32),
                color: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    if (switchValue) {
                      setState(() {
                        calendarEnabled = !calendarEnabled;
                      });
                    }
                  },
                  child: AbsorbPointer(
                    absorbing: !calendarEnabled || !switchValue,
                    child: TableCalendar(
                      locale: 'ko_KR',
                      firstDay: DateTime.utc(2022, 9, 1),
                      lastDay: DateTime.utc(2033, 3, 2),
                      focusedDay: DateTime.now(),
                      //focusedDay,
                      headerStyle: HeaderStyle(
                        titleCentered: true,
                        titleTextFormatter: (date, locale) =>
                            DateFormat.yMMMMd(locale).format(date),
                        formatButtonVisible: false,
                        titleTextStyle: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        leftChevronIcon: Icon(
                          Icons.chevron_left,
                          color: Color.fromRGBO(255, 121, 34, 1),
                        ),
                        rightChevronIcon: Icon(
                          Icons.chevron_right,
                          color: Color.fromRGBO(255, 121, 34, 1),
                        ),
                      ),
                      // todo range, 스타일 지정
                      calendarStyle: CalendarStyle(
                        // range 크기 조절
                        rangeHighlightScale: 1.0,

// range 색상 조정
                        rangeHighlightColor: const Color(0xFFBBDDFF),

// rangeStartDay 글자 조정
                        rangeStartTextStyle: const TextStyle(
                          color: Color.fromRGBO(255, 121, 34, 1),
                          fontSize: 16.0,
                        ),

// rangeStartDay 모양 조정
                        rangeStartDecoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 121, 34, 1),
                          shape: BoxShape.circle,
                        ),

// rangeEndDay 글자 조정
                        rangeEndTextStyle: const TextStyle(
                          color: Color.fromRGBO(255, 121, 34, 1),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
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
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 28,right: 28,bottom: 36),
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
    );
  }
}
