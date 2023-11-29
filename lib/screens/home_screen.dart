import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_mate/screens/tabs/settings_tab.dart';
import 'package:todo_mate/screens/tabs/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFECDB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5D9CEC),
        title: Text(
          'To Do Mate',
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: tabs[index],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(eccentricity: 1.0),
        backgroundColor: const Color(0xFF5D9CEC),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 20),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        surfaceTintColor: Colors.white,
        child: SingleChildScrollView(
          child: BottomNavigationBar(
            currentIndex: index,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_rounded, size: 35), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_suggest_outlined,
                    size: 35,
                  ),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> tabs = [const TasksTab(), const SettingsTab()];
}
