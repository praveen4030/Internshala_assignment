import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:key2iq_assignment/application/quiz/quiz_bloc.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';

class QuestionOptionTile extends StatelessWidget {
  final Function toUpdate;
  const QuestionOptionTile({
    Key key,
    @required this.toUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(builder: (context, state) {
      final bool isAnswered =
          state.questionsList[state.currentIndex].isAnswered;
      final bool isCorrect =
          state.questionsList[state.currentIndex].answeredIndex ==
              state.questionsList[state.currentIndex].correctAnswerIndex;

      return Column(
        children: state.questionsList[state.currentIndex].options
            .map((e) => Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: isAnswered &&
                            state.questionsList[state.currentIndex].options
                                    .indexOf(e) ==
                                state.questionsList[state.currentIndex]
                                    .answeredIndex
                        ? [
                            const BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1), //(x,y)
                              blurRadius: 2.0,
                            )
                          ]
                        : [],
                  ),
                  child: Row(
                    children: [
                      if (isAnswered &&
                          state.questionsList[state.currentIndex].options
                                  .indexOf(e) ==
                              state.questionsList[state.currentIndex]
                                  .answeredIndex)
                        isCorrect
                            ? SvgPicture.asset(
                                'assets/icons/tick.svg',
                                height: 22,
                                width: 22,
                              )
                            : SvgPicture.asset(
                                'assets/icons/wrong.svg',
                                height: 22,
                                width: 22,
                              )
                      else
                        Container(),
                      Expanded(
                        child: RadioListTile(
                          activeColor: Kolors.primaryColor,
                          title: Text(e),
                          groupValue: state
                              .questionsList[state.currentIndex].options
                              .indexOf(e),
                          value: state
                              .questionsList[state.currentIndex].answeredIndex,
                          onChanged: (val) {
                            if (!state
                                .questionsList[state.currentIndex].isAnswered) {
                              context
                                  .bloc<QuizBloc>()
                                  .add(QuizEvent.chooseAnswer(
                                    questionIndex: state.currentIndex,
                                    answerIndex: state
                                        .questionsList[state.currentIndex]
                                        .options
                                        .indexOf(e),
                                  ));
                            }
                            toUpdate();
                          },
                        ),
                      ),
                    ],
                  ),
                ))
            .toList(),
      );
    });
  }
}
