// *******************************************
//? ABSTRACTION & ENCAPSULATION
// *******************************************

// ENCAPSULATION //! means of privatizing data within a library
// ABSTRACTION //! hiding the implementation details to modularize you app

class Question {
  String question;
  bool answer;

  Question({
    required this.question,
    required this.answer,
  });
}

class Quiz {
  List<Question> questionBank = [
    Question(question: 'Lionel Messi is the GOAT', answer: true),
    Question(question: 'Wizkid is the GOAT', answer: true),
    Question(question: 'Buhari should go for another term', answer: false),
  ];
  // List<Question> _questionBank = [
  //   Question(question: 'Lionel Messi is the GOAT', answer: true),
  //   Question(question: 'Wizkid is the GOAT', answer: true),
  //   Question(question: 'Buhari should go for another term', answer: false),
  // ];

  int get length => questionBank.length;

//! after encapsulation
  // int get length => _questionBank.length;

  // String getQuestion(int questionNumber) {
  //   return _questionBank[questionNumber].question;
  // }

  // bool getAnswer(int questionNumber) {
  //   return _questionBank[questionNumber].answer;
  // }
}
