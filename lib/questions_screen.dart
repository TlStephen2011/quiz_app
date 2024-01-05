import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 54, 11, 73),
            Color.fromARGB(255, 153, 33, 206),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the question!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            AnswerButton(
              answerText: 'this is the first answer',
              onTap: onPressed,
            ),
            AnswerButton(
              answerText: 'this is another on of the custom buttons',
              onTap: onPressed,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Answer 2')),
            ElevatedButton(onPressed: () {}, child: const Text('Answer 3')),
            ElevatedButton(onPressed: () {}, child: const Text('Answer 4')),
          ],
        ),
      ),
    );
  }

  void onPressed() {}
}
