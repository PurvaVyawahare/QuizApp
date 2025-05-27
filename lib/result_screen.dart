import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/dummy_questions.dart';
import 'package:quiz_app/summary_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, this.restartQuiz, {super.key});
  final List<String> selectedAnswers;
  final void Function() restartQuiz;
  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'user-answer': selectedAnswers[i],
        'correct-answer': questions[i].answers[0],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final total = questions.length;
    final count =
        summaryData.where((data) {
          return data['user-answer'] == data['correct-answer'];
        }).length;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You answered $count out of $total questions correctly',
            style: GoogleFonts.roboto(
              color: const Color.fromARGB(255, 189, 152, 253),
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          SummaryData(getSummary()),
          SizedBox(height: 20),
          TextButton.icon(
            icon: Icon(Icons.restart_alt, color: Colors.white, size: 20),
            onPressed: restartQuiz,
            label: Text(
              'Restart Quiz',
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
