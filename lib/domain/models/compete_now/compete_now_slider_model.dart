import 'package:flutter/material.dart';

class CompeteNowSliderModel {
  String question;
  List<String> options;
  int correctAnswerIndex;
  bool isAnswered;
  int answeredIndex;

  CompeteNowSliderModel({
    @required this.question,
    @required this.options,
    @required this.correctAnswerIndex,
    @required this.isAnswered,
    @required this.answeredIndex,
  });
}

List<CompeteNowSliderModel> getQuestions() {
  final List<CompeteNowSliderModel> slides = [];
  final CompeteNowSliderModel competeNowSliderModel = CompeteNowSliderModel(
    answeredIndex: -1,
    isAnswered: false,
    correctAnswerIndex: 0,
    options: ['True', "False", "Uncertain"],
    question:
        "      1. Jorge runs faster than Drew.\n      2. Drew runs faster than Bernard.\n      3. Jorge runs faster than Bernard.\n\n If the first two statements are true, then the third statement is :",
  );
  final CompeteNowSliderModel competeNowSliderModel2 = CompeteNowSliderModel(
    answeredIndex: -1,
    isAnswered: false,
    correctAnswerIndex: 1,
    options: ['4', "6", "8", "10"],
    question:
        "When conducting an inventory of the PE storage room, Coach Carlson found several basketballs, tennis balls, footballs and baseballs in a locker. He found 4,6,8 and 10 of them(a different number for each type). He recorded that :\n\n  1. There are few tennis balls than footballs.\n  2. There are 6 more baseballs than basketballs.\n\n How many footballs are there?",
  );
  slides.add(competeNowSliderModel);
  slides.add(competeNowSliderModel2);

  return slides;
}
