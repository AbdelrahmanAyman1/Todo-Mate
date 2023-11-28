import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_mate/widgets/bottom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home';

  const HomeScreen({super.key});

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
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .157,
            width: double.infinity,
            color: const Color(0xFF5D9CEC),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(eccentricity: 1.0),
        backgroundColor: const Color(0xFF5D9CEC),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white, size: 20),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBarWidget(),
    );
  }
}
