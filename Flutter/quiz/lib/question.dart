class Question {
  final String id;
  final String question;
  final List<String> options;
  final String answer;
  bool isAnswered;
  Question({
    required this.id,
    required this.question,
    required this.options,
    required this.answer,
    required this.isAnswered,
  });

//! De-serialization
  factory Question.fromMap(Map<String, dynamic> data) {
    return Question(
      id: data['id'],
      question: data['question'],
      options: List<String>.from(data['options']),
      answer: data['answer'],
      isAnswered: data['isAnswered'],
    );
  }
}
