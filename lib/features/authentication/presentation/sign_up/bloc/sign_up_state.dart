part of 'sign_up_bloc.dart';

enum SignUpStatus { initial, loading, success, failure }

@freezed
sealed class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(SignUpStatus.initial) SignUpStatus status,
    @Default(true) bool isPasswordHidden,
    @Default(true) bool isRepeatPasswordHidden,
    String? errorMessage,
  }) = _SignUpState;
}