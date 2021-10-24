import 'package:flutter/material.dart';

import 'screens/homescreen.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quizzler",
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: [
          MaterialPage(child: HomeScreen(), key: ValueKey('HomeScreen'),)
        ],
        onPopPage: (route, result) => route.didPop(result),  
      ),
    );
  }
}
