import 'package:flutter/cupertino.dart';

class Quiz {
  final int id;
  final String name;
  final String description;
  final String category;
  final Icon icon;
  final Map<String, String> statistics;
  final List<Map<String,dynamic>> questions;
}

/*
[
  {
    "Question 1": [
      "1",
      "2",
      "3",
      "4",
    ],
    "answer_id": 1
  },
  ...
]
*/