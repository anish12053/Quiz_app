import 'package:flutter/material.dart';
class SummaryData extends StatelessWidget {
  const SummaryData(this.summarydata, {super.key});

  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: summarydata.map((data) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(((data['question_index'] as int) + 1 ).toString(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(data['question'] as String,
                style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
                ),
                Text(data['choosen_answer'] as String,
                style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
                ),
                Text(data['correct_answer'] as String,
                style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
                ),
                const SizedBox(height: 20,)
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
