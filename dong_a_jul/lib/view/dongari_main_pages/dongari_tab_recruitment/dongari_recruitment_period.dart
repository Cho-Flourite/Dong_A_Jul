import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class RecruitmentPeriod extends StatefulWidget {
  const RecruitmentPeriod({super.key});

  @override
  State<RecruitmentPeriod> createState() => _RecruitmentPeriodState();
}

class _RecruitmentPeriodState extends State<RecruitmentPeriod> {
  var switchValue = false;

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
          TableCalendar(
            //locale: 'ko_KR',
            firstDay: DateTime.utc(2021, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(), //focusedDay,
            /*   onDaySelected: (DateTime selectedDay, DateTime focusedDay) {
              setState(() {
                this.selectedDay = selectedDay;
                this.focusedDay = focusedDay;
              });
            },
            selectedDayPredicate: (DateTime day) {
              return isSameDay(selectedDay, day);
            },*/
          ),
        ],
      ),
    );
  }
}
