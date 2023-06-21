import 'package:flutter/material.dart';
import 'package:homework_web/common/view/bottom_screen.dart';
import 'package:homework_web/common/view/top_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopScreen(),
            BottomScreen()
          ],
        ),
      ),
    );
  }
}
