import 'dart:convert';
import 'dart:io';

import 'abstraction.dart';

//?  PSEUDOCODE
//TODO1: Create a new instance of a Quiz.
//TODO2: We need a variable to keep track of the score.
//TODO3: We need a variable to keep track of the current question being answered
//TODO4: Receive input from the player
//TODO5: Check if the player's answer is equal to the right answer for the corresponding question
//TODO6: Increment the question number every time a question is already answered
//TODO7: Repeat 4-6 until there are no more questions

void main() {
  final quiz = Quiz();

  var score = 0; //keeps score of right answers gotten
  var questionNumber = 0; //the amount of questions already answered.
  print('****************************');
  print('Quiz game');
  print('****************************');

  print('Choose 1 for true');
  print('Choose 0 for false');
  print('');

  //quiz.questionBank[0].answer = false; //! this is where encapsulation comes in
  //quiz.questionBank[2].answer = true; //! encapsulate data within a library
//? Notice, after encapsulation, we don't have access to the questionBank anymore

  while (questionNumber < quiz.length) {
    print(quiz.questionBank[questionNumber].question);
    // print(quiz.getQuestion(questionNumber));
    var input = stdin.readLineSync(encoding: utf8)?.trim();

//? I personally think this is a little bit hard to read...so let's create a function
    if (quiz.questionBank[questionNumber].answer && input == '1') {
      score += 1;
      print('Answer is correct');
      print('');
    } else if (!(quiz.questionBank[questionNumber].answer) && input == '0') {
      score += 1;
      print('Answer is correct');
      print('');
    } else {
      print('Wrong answer!');
      print('');
    }

    // if (isCorrect(quiz.questionBank[questionNumber].answer, input!)) {
    //   score += 1;
    //   print('Answer is correct');
    //   print('');
    // } else {
    //   print('Wrong answer!');
    //   print('');
    // }

    // if (isCorrect(quiz.getAnswer(questionNumber), input!)) {
    //   score += 1;
    //   print('Answer is correct');
    //   print('');
    // } else {
    //   print('Wrong answer!');
    //   print('');
    // }

    questionNumber++;
  }
  if (score >= 2) {
    print('Congratulations...you got $score out of ${quiz.length} questions');
  } else {
    print('Bad score! you got $score out of ${quiz.length} questions');
  }
}

// bool isCorrect(bool answer, String input) {
//   if (input == '1' && answer) {
//     return true;
//   }
//   if (input == '0' && !answer) {
//     return true;
//   }
//   return false;
// }
