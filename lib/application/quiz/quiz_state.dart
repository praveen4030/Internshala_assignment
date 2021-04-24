part of 'quiz_bloc.dart';

@freezed
abstract class QuizState with _$QuizState {
  const factory QuizState({
    @required List<CompeteNowSliderModel> questionsList,
    @required int currentIndex,
  }) = _QuizState;

  factory QuizState.initial() => QuizState(
        questionsList: getQuestions(),
        currentIndex: 0,
      );
}
