class Question {
  String id;
  String question;
  Map<String, dynamic> options;

  Question({
    required this.id,
    required this.question,
    required this.options,
  });

  @override
  String toString() {
    return 'Question(id: $id)';
  }
}
