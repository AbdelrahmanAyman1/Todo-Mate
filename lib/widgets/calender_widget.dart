import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        //`selectedDate` the new date selected.
      },
      activeColor: Colors.white,
      headerProps: const EasyHeaderProps(
          showHeader: true,
          monthPickerType: MonthPickerType.dropDown,
          showMonthPicker: true,
          showSelectedDate: false),
      dayProps: const EasyDayProps(
        activeDayStyle: DayStyle(
            dayStrStyle: TextStyle(
                color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
            dayNumStyle: TextStyle(
                color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold)),
        height: 95,
        inactiveDayStyle: DayStyle(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        dayStructure: DayStructure.dayStrDayNum,
        todayHighlightStyle: TodayHighlightStyle.withBackground,
        todayHighlightColor: Colors.white,
      ),
    );
  }
}
