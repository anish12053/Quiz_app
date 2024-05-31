class Question{
  const Question(this.text,this.answers);

  final String text;
  final List<String> answers;

  List<String> shuffling(){
   final shuffledanswer = List.of(answers);
    shuffledanswer.shuffle();
    return shuffledanswer;
  }
}
