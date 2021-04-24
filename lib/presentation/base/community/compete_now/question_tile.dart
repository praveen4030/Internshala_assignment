import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:key2iq_assignment/application/quiz/quiz_bloc.dart';
import 'package:key2iq_assignment/domain/models/compete_now/compete_now_slider_model.dart';
import 'package:key2iq_assignment/presentation/base/community/compete_now/compete_now.dart';
import 'package:key2iq_assignment/presentation/base/community/compete_now/question_option_tile.dart';
import 'package:key2iq_assignment/presentation/base/community/compete_now/question_tile_header.dart';
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:key2iq_assignment/presentation/core/widgets/button.dart';

class QuestionTile extends StatelessWidget {
  final CompeteNowSliderModel questionModel;
  final int index;
  final Function toUpdate;
  const QuestionTile({
    Key key,
    @required this.questionModel,
    @required this.index,
    @required this.toUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(builder: (context, state) {
      return Container(
        padding: EdgeInsets.only(
          top: state.questionsList[index].isAnswered ? 0 : 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            if (state.questionsList[index].isAnswered)
              QuestionTileHeader(
                  isCorrect: state.questionsList[index].correctAnswerIndex ==
                      state.questionsList[index].answeredIndex)
            else
              Container(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  children: [
                    const CompeteNowHeader(),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Text(
                            state.questionsList[index].question,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          const Divider(),
                          QuestionOptionTile(
                            toUpdate: toUpdate,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: ButtonWidget(
                        onTap: () {
                          if (state
                              .questionsList[state.currentIndex].isAnswered) {
                            if (state.currentIndex !=
                                state.questionsList.length - 1) {
                              context.bloc<QuizBloc>().add(
                                  QuizEvent.changeCurrentIndex(
                                      currentIndex: state.currentIndex + 1));
                            } else {
                              Fluttertoast.showToast(
                                  msg:
                                      "You have successfully completed the quiz.");
                              ExtendedNavigator.of(context).pop();
                            }
                          } else {
                            context
                                .bloc<QuizBloc>()
                                .add(const QuizEvent.submitAnswer());
                          }
                          toUpdate();
                        },
                        text: state.questionsList[state.currentIndex].isAnswered
                            ? state.currentIndex ==
                                    state.questionsList.length - 1
                                ? "Finish"
                                : "Continue"
                            : "Submit",
                        isEnabled: state.questionsList[state.currentIndex]
                                .answeredIndex !=
                            -1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
