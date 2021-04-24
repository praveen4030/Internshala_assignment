import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:key2iq_assignment/application/quiz/quiz_bloc.dart';
import 'package:key2iq_assignment/domain/core/enum/enum.dart';
import 'package:key2iq_assignment/presentation/base/community/compete_now/compete_now_slider.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';
import 'package:key2iq_assignment/presentation/core/widgets/button.dart';

import '../../../../injection.dart';

class CompeteNowPage extends StatelessWidget {
  const CompeteNowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<QuizBloc>(),
      child: BlocBuilder<QuizBloc, QuizState>(builder: (context, index) {
        return Scaffold(
          appBar: AppBar(
            elevation: 1,
            title: ProgressBar(),
            actions: [
              InkWell(
                onTap: () {
                  context
                      .bloc<QuizBloc>()
                      .add(const QuizEvent.resetThisQuestion());
                },
                child: SvgPicture.asset(
                  'assets/icons/repeat.svg',
                  height: 24,
                  width: 24,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          body: Column(
            children: [
              const Expanded(
                child: CompeteNowSlider(),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(builder: (context, state) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: state.questionsList
              .map((e) => QuestionRespondedTile(
                    questionProgress:
                        state.currentIndex == state.questionsList.indexOf(e)
                            ? QuestionProgress.current
                            : state
                                .questionsList[state.questionsList.indexOf(e)]
                                .isAnswered
                            ? QuestionProgress.answered
                            : QuestionProgress.pending,
                  ))
              .toList(),
        ),
      );
    });
  }
}

class QuestionRespondedTile extends StatelessWidget {
  final QuestionProgress questionProgress;
  const QuestionRespondedTile({
    Key key,
    @required this.questionProgress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: questionProgress == QuestionProgress.current ? 16 : 10,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        color: questionProgress == QuestionProgress.answered
            ? Kolors.blackDarkGradient
            : questionProgress == QuestionProgress.pending
            ? Color(0xffEDEDED)
            : Kolors.yellorColor,
      ),
    );
  }
}

class CompeteNowHeader extends StatelessWidget {
  const CompeteNowHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Icon(Icons.ac_unit),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "LOGIC WARMUPS",
                  style: TextStyle(
                    color: Kolors.darkGreyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Logic Puzzles - Internmediate Warmup",
                  style: TextStyle(
                    color: Kolors.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
