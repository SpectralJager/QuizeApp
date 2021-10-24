import 'package:flutter/material.dart';
import 'package:quiz_front_flutter/widgets/categorylist.dart';
import 'package:quiz_front_flutter/widgets/popularquiz.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(
            color: Color(0xff4ECFBC),
            fontSize: 28,
            fontWeight: FontWeight.w700,
            fontFamily: "Poppins",
            letterSpacing: 5,
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Color(0xff1E1047),
        elevation: 0,
      ),
      endDrawer: Drawer(),
      backgroundColor: Color(0xffFD892A),
      body: SingleChildScrollView(
        child: Column(children: [
          PopularQuiz(),
          CategoryList(),
          ]),
      )
      );
  }
}
