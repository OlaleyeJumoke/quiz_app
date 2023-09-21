import 'package:flutter/material.dart';

class QuizViewModel with ChangeNotifier {
  String _userName = "User";
  set userName(String value) {
    _userName = value;
    notifyListeners();
  }
  String get userName => _userName;

  int _index = 0;
  set index(int value) {
    _index = value;
    notifyListeners();
  }
  int get index => _index;

}
