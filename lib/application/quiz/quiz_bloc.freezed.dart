// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuizEventTearOff {
  const _$QuizEventTearOff();

// ignore: unused_element
  _ChooseAnswer chooseAnswer({int questionIndex, int answerIndex}) {
    return _ChooseAnswer(
      questionIndex: questionIndex,
      answerIndex: answerIndex,
    );
  }

// ignore: unused_element
  _ChangeCurrentIndex changeCurrentIndex({int currentIndex}) {
    return _ChangeCurrentIndex(
      currentIndex: currentIndex,
    );
  }

// ignore: unused_element
  _SubmitAnswer submitAnswer() {
    return const _SubmitAnswer();
  }

// ignore: unused_element
  _ResetThisQuestion resetThisQuestion() {
    return const _ResetThisQuestion();
  }
}

/// @nodoc
// ignore: unused_element
const $QuizEvent = _$QuizEventTearOff();

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult chooseAnswer(int questionIndex, int answerIndex),
    @required TResult changeCurrentIndex(int currentIndex),
    @required TResult submitAnswer(),
    @required TResult resetThisQuestion(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chooseAnswer(int questionIndex, int answerIndex),
    TResult changeCurrentIndex(int currentIndex),
    TResult submitAnswer(),
    TResult resetThisQuestion(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult chooseAnswer(_ChooseAnswer value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult submitAnswer(_SubmitAnswer value),
    @required TResult resetThisQuestion(_ResetThisQuestion value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chooseAnswer(_ChooseAnswer value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult submitAnswer(_SubmitAnswer value),
    TResult resetThisQuestion(_ResetThisQuestion value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res> implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  final QuizEvent _value;
  // ignore: unused_field
  final $Res Function(QuizEvent) _then;
}

/// @nodoc
abstract class _$ChooseAnswerCopyWith<$Res> {
  factory _$ChooseAnswerCopyWith(
          _ChooseAnswer value, $Res Function(_ChooseAnswer) then) =
      __$ChooseAnswerCopyWithImpl<$Res>;
  $Res call({int questionIndex, int answerIndex});
}

/// @nodoc
class __$ChooseAnswerCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$ChooseAnswerCopyWith<$Res> {
  __$ChooseAnswerCopyWithImpl(
      _ChooseAnswer _value, $Res Function(_ChooseAnswer) _then)
      : super(_value, (v) => _then(v as _ChooseAnswer));

  @override
  _ChooseAnswer get _value => super._value as _ChooseAnswer;

  @override
  $Res call({
    Object questionIndex = freezed,
    Object answerIndex = freezed,
  }) {
    return _then(_ChooseAnswer(
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex as int,
      answerIndex:
          answerIndex == freezed ? _value.answerIndex : answerIndex as int,
    ));
  }
}

/// @nodoc
class _$_ChooseAnswer implements _ChooseAnswer {
  const _$_ChooseAnswer({this.questionIndex, this.answerIndex});

  @override
  final int questionIndex;
  @override
  final int answerIndex;

  @override
  String toString() {
    return 'QuizEvent.chooseAnswer(questionIndex: $questionIndex, answerIndex: $answerIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChooseAnswer &&
            (identical(other.questionIndex, questionIndex) ||
                const DeepCollectionEquality()
                    .equals(other.questionIndex, questionIndex)) &&
            (identical(other.answerIndex, answerIndex) ||
                const DeepCollectionEquality()
                    .equals(other.answerIndex, answerIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionIndex) ^
      const DeepCollectionEquality().hash(answerIndex);

  @JsonKey(ignore: true)
  @override
  _$ChooseAnswerCopyWith<_ChooseAnswer> get copyWith =>
      __$ChooseAnswerCopyWithImpl<_ChooseAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult chooseAnswer(int questionIndex, int answerIndex),
    @required TResult changeCurrentIndex(int currentIndex),
    @required TResult submitAnswer(),
    @required TResult resetThisQuestion(),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return chooseAnswer(questionIndex, answerIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chooseAnswer(int questionIndex, int answerIndex),
    TResult changeCurrentIndex(int currentIndex),
    TResult submitAnswer(),
    TResult resetThisQuestion(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chooseAnswer != null) {
      return chooseAnswer(questionIndex, answerIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult chooseAnswer(_ChooseAnswer value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult submitAnswer(_SubmitAnswer value),
    @required TResult resetThisQuestion(_ResetThisQuestion value),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return chooseAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chooseAnswer(_ChooseAnswer value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult submitAnswer(_SubmitAnswer value),
    TResult resetThisQuestion(_ResetThisQuestion value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (chooseAnswer != null) {
      return chooseAnswer(this);
    }
    return orElse();
  }
}

abstract class _ChooseAnswer implements QuizEvent {
  const factory _ChooseAnswer({int questionIndex, int answerIndex}) =
      _$_ChooseAnswer;

  int get questionIndex;
  int get answerIndex;
  @JsonKey(ignore: true)
  _$ChooseAnswerCopyWith<_ChooseAnswer> get copyWith;
}

/// @nodoc
abstract class _$ChangeCurrentIndexCopyWith<$Res> {
  factory _$ChangeCurrentIndexCopyWith(
          _ChangeCurrentIndex value, $Res Function(_ChangeCurrentIndex) then) =
      __$ChangeCurrentIndexCopyWithImpl<$Res>;
  $Res call({int currentIndex});
}

/// @nodoc
class __$ChangeCurrentIndexCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$ChangeCurrentIndexCopyWith<$Res> {
  __$ChangeCurrentIndexCopyWithImpl(
      _ChangeCurrentIndex _value, $Res Function(_ChangeCurrentIndex) _then)
      : super(_value, (v) => _then(v as _ChangeCurrentIndex));

  @override
  _ChangeCurrentIndex get _value => super._value as _ChangeCurrentIndex;

  @override
  $Res call({
    Object currentIndex = freezed,
  }) {
    return _then(_ChangeCurrentIndex(
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
class _$_ChangeCurrentIndex implements _ChangeCurrentIndex {
  const _$_ChangeCurrentIndex({this.currentIndex});

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'QuizEvent.changeCurrentIndex(currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeCurrentIndex &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$ChangeCurrentIndexCopyWith<_ChangeCurrentIndex> get copyWith =>
      __$ChangeCurrentIndexCopyWithImpl<_ChangeCurrentIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult chooseAnswer(int questionIndex, int answerIndex),
    @required TResult changeCurrentIndex(int currentIndex),
    @required TResult submitAnswer(),
    @required TResult resetThisQuestion(),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return changeCurrentIndex(currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chooseAnswer(int questionIndex, int answerIndex),
    TResult changeCurrentIndex(int currentIndex),
    TResult submitAnswer(),
    TResult resetThisQuestion(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeCurrentIndex != null) {
      return changeCurrentIndex(currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult chooseAnswer(_ChooseAnswer value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult submitAnswer(_SubmitAnswer value),
    @required TResult resetThisQuestion(_ResetThisQuestion value),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return changeCurrentIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chooseAnswer(_ChooseAnswer value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult submitAnswer(_SubmitAnswer value),
    TResult resetThisQuestion(_ResetThisQuestion value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeCurrentIndex != null) {
      return changeCurrentIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrentIndex implements QuizEvent {
  const factory _ChangeCurrentIndex({int currentIndex}) = _$_ChangeCurrentIndex;

  int get currentIndex;
  @JsonKey(ignore: true)
  _$ChangeCurrentIndexCopyWith<_ChangeCurrentIndex> get copyWith;
}

/// @nodoc
abstract class _$SubmitAnswerCopyWith<$Res> {
  factory _$SubmitAnswerCopyWith(
          _SubmitAnswer value, $Res Function(_SubmitAnswer) then) =
      __$SubmitAnswerCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitAnswerCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$SubmitAnswerCopyWith<$Res> {
  __$SubmitAnswerCopyWithImpl(
      _SubmitAnswer _value, $Res Function(_SubmitAnswer) _then)
      : super(_value, (v) => _then(v as _SubmitAnswer));

  @override
  _SubmitAnswer get _value => super._value as _SubmitAnswer;
}

/// @nodoc
class _$_SubmitAnswer implements _SubmitAnswer {
  const _$_SubmitAnswer();

  @override
  String toString() {
    return 'QuizEvent.submitAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmitAnswer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult chooseAnswer(int questionIndex, int answerIndex),
    @required TResult changeCurrentIndex(int currentIndex),
    @required TResult submitAnswer(),
    @required TResult resetThisQuestion(),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return submitAnswer();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chooseAnswer(int questionIndex, int answerIndex),
    TResult changeCurrentIndex(int currentIndex),
    TResult submitAnswer(),
    TResult resetThisQuestion(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitAnswer != null) {
      return submitAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult chooseAnswer(_ChooseAnswer value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult submitAnswer(_SubmitAnswer value),
    @required TResult resetThisQuestion(_ResetThisQuestion value),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return submitAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chooseAnswer(_ChooseAnswer value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult submitAnswer(_SubmitAnswer value),
    TResult resetThisQuestion(_ResetThisQuestion value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitAnswer != null) {
      return submitAnswer(this);
    }
    return orElse();
  }
}

abstract class _SubmitAnswer implements QuizEvent {
  const factory _SubmitAnswer() = _$_SubmitAnswer;
}

/// @nodoc
abstract class _$ResetThisQuestionCopyWith<$Res> {
  factory _$ResetThisQuestionCopyWith(
          _ResetThisQuestion value, $Res Function(_ResetThisQuestion) then) =
      __$ResetThisQuestionCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetThisQuestionCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$ResetThisQuestionCopyWith<$Res> {
  __$ResetThisQuestionCopyWithImpl(
      _ResetThisQuestion _value, $Res Function(_ResetThisQuestion) _then)
      : super(_value, (v) => _then(v as _ResetThisQuestion));

  @override
  _ResetThisQuestion get _value => super._value as _ResetThisQuestion;
}

/// @nodoc
class _$_ResetThisQuestion implements _ResetThisQuestion {
  const _$_ResetThisQuestion();

  @override
  String toString() {
    return 'QuizEvent.resetThisQuestion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetThisQuestion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult chooseAnswer(int questionIndex, int answerIndex),
    @required TResult changeCurrentIndex(int currentIndex),
    @required TResult submitAnswer(),
    @required TResult resetThisQuestion(),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return resetThisQuestion();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult chooseAnswer(int questionIndex, int answerIndex),
    TResult changeCurrentIndex(int currentIndex),
    TResult submitAnswer(),
    TResult resetThisQuestion(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetThisQuestion != null) {
      return resetThisQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult chooseAnswer(_ChooseAnswer value),
    @required TResult changeCurrentIndex(_ChangeCurrentIndex value),
    @required TResult submitAnswer(_SubmitAnswer value),
    @required TResult resetThisQuestion(_ResetThisQuestion value),
  }) {
    assert(chooseAnswer != null);
    assert(changeCurrentIndex != null);
    assert(submitAnswer != null);
    assert(resetThisQuestion != null);
    return resetThisQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult chooseAnswer(_ChooseAnswer value),
    TResult changeCurrentIndex(_ChangeCurrentIndex value),
    TResult submitAnswer(_SubmitAnswer value),
    TResult resetThisQuestion(_ResetThisQuestion value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resetThisQuestion != null) {
      return resetThisQuestion(this);
    }
    return orElse();
  }
}

abstract class _ResetThisQuestion implements QuizEvent {
  const factory _ResetThisQuestion() = _$_ResetThisQuestion;
}

/// @nodoc
class _$QuizStateTearOff {
  const _$QuizStateTearOff();

// ignore: unused_element
  _QuizState call(
      {@required List<CompeteNowSliderModel> questionsList,
      @required int currentIndex}) {
    return _QuizState(
      questionsList: questionsList,
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuizState = _$QuizStateTearOff();

/// @nodoc
mixin _$QuizState {
  List<CompeteNowSliderModel> get questionsList;
  int get currentIndex;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res>;
  $Res call({List<CompeteNowSliderModel> questionsList, int currentIndex});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res> implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  final QuizState _value;
  // ignore: unused_field
  final $Res Function(QuizState) _then;

  @override
  $Res call({
    Object questionsList = freezed,
    Object currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      questionsList: questionsList == freezed
          ? _value.questionsList
          : questionsList as List<CompeteNowSliderModel>,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$QuizStateCopyWith(
          _QuizState value, $Res Function(_QuizState) then) =
      __$QuizStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CompeteNowSliderModel> questionsList, int currentIndex});
}

/// @nodoc
class __$QuizStateCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuizStateCopyWith<$Res> {
  __$QuizStateCopyWithImpl(_QuizState _value, $Res Function(_QuizState) _then)
      : super(_value, (v) => _then(v as _QuizState));

  @override
  _QuizState get _value => super._value as _QuizState;

  @override
  $Res call({
    Object questionsList = freezed,
    Object currentIndex = freezed,
  }) {
    return _then(_QuizState(
      questionsList: questionsList == freezed
          ? _value.questionsList
          : questionsList as List<CompeteNowSliderModel>,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
class _$_QuizState implements _QuizState {
  const _$_QuizState(
      {@required this.questionsList, @required this.currentIndex})
      : assert(questionsList != null),
        assert(currentIndex != null);

  @override
  final List<CompeteNowSliderModel> questionsList;
  @override
  final int currentIndex;

  @override
  String toString() {
    return 'QuizState(questionsList: $questionsList, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuizState &&
            (identical(other.questionsList, questionsList) ||
                const DeepCollectionEquality()
                    .equals(other.questionsList, questionsList)) &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionsList) ^
      const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$QuizStateCopyWith<_QuizState> get copyWith =>
      __$QuizStateCopyWithImpl<_QuizState>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {@required List<CompeteNowSliderModel> questionsList,
      @required int currentIndex}) = _$_QuizState;

  @override
  List<CompeteNowSliderModel> get questionsList;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$QuizStateCopyWith<_QuizState> get copyWith;
}
