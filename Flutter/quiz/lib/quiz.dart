import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'question.dart';

class Quiz with ChangeNotifier {
  Quiz() {
    fetchAndSetQuestions();
  }

  List<Question> _questions = [];
  var _currentIndex = 0;
  var _scoreCount = 0;

  UnmodifiableListView<Question> get questions =>
      UnmodifiableListView(_questions);

  int get currentIndex => _currentIndex;

  int get length => _questions.length;

  int get scoreCount => _scoreCount;

  set setCurrIndex(int i) {
    _currentIndex = i;
    notifyListeners();
  }

  set setScoreCount(int i) {
    _scoreCount = i;
    notifyListeners();
  }

  Future<void> fetchAndSetQuestions() async {
    final rawData = await rootBundle.loadString('assets/trivia.json');
    final data = json.decode(rawData) as List;
    final questions = data.map((e) => Question.fromMap(e)).toList();
    _questions = questions;
    notifyListeners();
  }
}
