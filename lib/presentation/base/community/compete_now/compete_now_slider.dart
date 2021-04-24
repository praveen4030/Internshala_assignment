import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:key2iq_assignment/application/quiz/quiz_bloc.dart';
import 'package:key2iq_assignment/presentation/base/community/compete_now/question_tile.dart';

class CompeteNowSlider extends StatefulWidget {
  const CompeteNowSlider({Key key}) : super(key: key);

  @override
  _CompeteNowSliderState createState() => _CompeteNowSliderState();
}

class _CompeteNowSliderState extends State<CompeteNowSlider> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizBloc, QuizState>(
      listener: (context, state) {
        controller.animateToPage(
          state.currentIndex,
          duration: const Duration(microseconds: 200),
          curve: Curves.linear,
        );
      },
      builder: (context, state) {
        return PageView.builder(
            controller: controller,
            onPageChanged: (val) {
              context.bloc<QuizBloc>().add(
                    QuizEvent.changeCurrentIndex(
                      currentIndex: val,
                    ),
                  );
            },
            itemCount: state.questionsList.length,
            itemBuilder: (context, index) {
              return QuestionTile(
                questionModel: state.questionsList[state.currentIndex],
                index: state.currentIndex,
                toUpdate: () {
                  setState(() {});
                },
              );
            });
      },
    );
  }
}
