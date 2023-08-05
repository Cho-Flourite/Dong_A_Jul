import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class RecruitmentPeriod extends StatefulWidget {
  const RecruitmentPeriod({super.key});

  @override
  State<RecruitmentPeriod> createState() => _RecruitmentPeriodState();
}

class _RecruitmentPeriodState extends State<RecruitmentPeriod> {
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
          '모집기간 수정',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              '모집기간 on / off',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
              activeColor: Color.fromRGBO(124, 79, 255, 1),
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
    );
  }
}
