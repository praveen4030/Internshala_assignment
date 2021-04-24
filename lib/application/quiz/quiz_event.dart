part of 'quiz_bloc.dart';

@freezed
abstract class QuizEvent with _$QuizEvent {
  const factory QuizEvent.chooseAnswer({
    int questionIndex,
    int answerIndex,
  }) = _ChooseAnswer;
  const factory QuizEvent.changeCurrentIndex({int currentIndex}) =
      _ChangeCurrentIndex;
  const factory QuizEvent.submitAnswer() = _SubmitAnswer;
  const factory QuizEvent.resetThisQuestion() = _ResetThisQuestion;
}
