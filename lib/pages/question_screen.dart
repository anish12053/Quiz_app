
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/data.dart';
import 'package:flutter_quiz_app/widgets/answerbutton.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.chooseAnswer , {super.key});

  final void Function(String answer) chooseAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  var questionIndex = 0;

  void answerquestion(String answer){

    widget.chooseAnswer(answer);

    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {

    final currentquestion = questions[questionIndex];

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
          currentquestion.text,
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
          const SizedBox(height: 10,),
          ...currentquestion.shuffling().map((answer){
            return AnswerButton(answer, (){
              answerquestion(answer);
            });
          })
        ],
      ),
    );
  }
}
