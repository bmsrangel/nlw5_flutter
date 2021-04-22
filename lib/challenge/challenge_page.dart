import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/question_indicator/question_indicator_widget.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: SafeArea(
          child: QuestionIndicatorWidget(),
          top: true,
        ),
      ),
      body: QuizWidget(
        title: 'O que o Flutter faz em sua totalidade?',
      ),
    );
  }
}
