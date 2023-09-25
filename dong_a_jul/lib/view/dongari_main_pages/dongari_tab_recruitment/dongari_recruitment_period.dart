import 'package:dong_a_jul/view/dongari_main_pages/dongari_main.dart';
import 'package:dong_a_jul/view/dongari_main_pages/dongari_tab_recruitment/dongari_recruitment.dart';
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

  DateTime? _selectedDay;
  DateTime? _rangeStart; // 범위 시작 날짜
  DateTime? _rangeEnd; // 범위 끝나는 날짜

  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime _focusedDay = DateTime.now();

  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
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
                child:TableCalendar(
                  locale: 'ko_KR',
                  firstDay: DateTime.utc(2022, 9, 1),
                  lastDay: DateTime.utc(2033, 3, 2),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  rangeStartDay: _rangeStart,
                  rangeEndDay: _rangeEnd,
                  calendarFormat: _calendarFormat,
                  rangeSelectionMode: _rangeSelectionMode,
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                        _rangeStart = null;
                        _rangeEnd = null;
                        _rangeSelectionMode = RangeSelectionMode.toggledOff;
                      });
                    }
                  },
                  onRangeSelected: (start, end, focusedDay) {
                    setState(() {
                      _selectedDay = null;
                      _focusedDay = focusedDay;
                      _rangeStart = start;
                      _rangeEnd = end;
                      _rangeSelectionMode = RangeSelectionMode.toggledOn;
                    });
                  },
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
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
                  calendarStyle: CalendarStyle(
                    rangeHighlightScale: 1.0,
                    rangeHighlightColor: Color.fromRGBO(255, 121, 34, 0.20),
                    rangeStartDecoration: BoxDecoration(
                        color: Colors.orange, shape: BoxShape.circle),
                    rangeEndDecoration: BoxDecoration(
                        color: Colors.orange, shape: BoxShape.circle),
                    weekendTextStyle: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {

              print('수정');
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
                    '수정 적용',
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
        ],
      ),
    );
  }
}
