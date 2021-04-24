import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:key2iq_assignment/domain/models/compete_now/compete_now_slider_model.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

@injectable
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  QuizBloc() : super(QuizState.initial());

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* event.map(
      resetThisQuestion: (e) async* {
        final List<CompeteNowSliderModel> list = List.from(state.questionsList);
        list[state.currentIndex].answeredIndex = -1;
        list[state.currentIndex].isAnswered = false;
        yield state.copyWith(
          questionsList: list,
        );
      },
      chooseAnswer: (e) async* {
        final List<CompeteNowSliderModel> list = List.from(state.questionsList);
        list[e.questionIndex].answeredIndex = e.answerIndex;
        yield state.copyWith(
          questionsList: list,
        );
      },
      changeCurrentIndex: (e) async* {
        yield state.copyWith(
          currentIndex: e.currentIndex,
        );
      },
      submitAnswer: (e) async* {
        final List<CompeteNowSliderModel> list = List.from(state.questionsList);
        list[state.currentIndex].isAnswered = true;
        yield state.copyWith(
          questionsList: list,
        );
      },
    );
  }
}
