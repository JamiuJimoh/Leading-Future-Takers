class Question {
  final String question;
  final List<String> options;
  final String answer;
  Question({
    required this.question,
    required this.options,
    required this.answer,
  });

//! De-serialization
  factory Question.fromMap(Map<String, dynamic> data) {
    return Question(
      question: data['question'],
      options: List<String>.from(data['options']),
      answer: data['answer'],
    );
  }
}
