import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchscreen, {super.key});
  final void Function() switchscreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(150, 250, 250, 250),
          ),
          SizedBox(height: 25),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: const Color.fromARGB(226, 206, 183, 245),
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: switchscreen,
            label: Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            icon: Icon(Icons.arrow_right_alt, color: Colors.white, size: 15),
          ),
        ],
      ),
    );
  }
}
