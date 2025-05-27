class DataModel {
  const DataModel(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    List<String> answerList = List.of(answers);
    answerList.shuffle();
    return answerList;
  }
}
