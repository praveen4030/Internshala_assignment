import 'package:flutter/material.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';

class QuestionTileHeader extends StatelessWidget {
  final bool isCorrect;
  const QuestionTileHeader({Key key, @required this.isCorrect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
          ),
          color: Kolors.blackDarkGradient,
          width: MediaQuery.of(context).size.width,
          child: const Text(
            "You started a 1 day streak!\nSee progress...",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
          ),
          color: Kolors.blueColor,
          width: MediaQuery.of(context).size.width,
          child: Text(
            isCorrect ? "🎉 Correct!" : "😔 Wrong",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
