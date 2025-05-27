import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryData extends StatelessWidget {
  const SummaryData(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children:
                summaryData.map((data) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ((data['question-index'] as int) + 1).toString(),
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 189, 152, 253),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['question'] as String,
                              style: GoogleFonts.roboto(
                                color: const Color.fromARGB(255, 189, 152, 253),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              data['user-answer'] as String,
                              style: TextStyle(
                                color:
                                    (data['user-answer'] ==
                                            data['correct-answer']
                                        ? const Color.fromARGB(255, 3, 95, 35)
                                        : const Color.fromARGB(255, 172, 6, 6)),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              data['correct-answer'] as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 3, 95, 35),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
