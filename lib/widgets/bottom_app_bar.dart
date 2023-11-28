import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: const Color(0xFFffffff),
      shape: const CircularNotchedRectangle(),
      notchMargin: 9,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.list_rounded,
              color: Colors.grey,
              size: 40,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.settings_suggest_outlined,
              color: Colors.grey,
              size: 33,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
