import 'package:flutter/material.dart';

import 'screens/homescreen.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quizzler",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
