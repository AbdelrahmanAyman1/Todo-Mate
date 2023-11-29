import 'package:flutter/material.dart';
import 'package:todo_mate/widgets/calender_widget.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * .157,
          width: double.infinity,
          color: const Color(0xFF5D9CEC),
        ),
        const CalendarWidget()
      ]),
    ]);
  }
}
