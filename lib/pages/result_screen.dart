import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quiz_app/data/data.dart';
import 'package:flutter_quiz_app/widgets/summary_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswer,{super.key});

  final List<String> selectedAnswer;

  List<Map<String,Object>> getSummary(){
    final List<Map<String,Object>> summary = [];
    for(var i=0;i<selectedAnswer.length;i++){
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'choosen_answer': selectedAnswer[i],
        }
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {

    var cnt = 0;
    var total = selectedAnswer.length;
    for(var i=0;i<selectedAnswer.length;i++){
      if(questions[i].answers[0] == selectedAnswer[i]){
        cnt++;
      }
    }
    
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result Screen',
              style: GoogleFonts.lato(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            Text(
              'Your score is $cnt out of $total',
              style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
                height: 30,
              ),
            SummaryData(getSummary()),
          ],
        ),
      ),
    );
  }
}
