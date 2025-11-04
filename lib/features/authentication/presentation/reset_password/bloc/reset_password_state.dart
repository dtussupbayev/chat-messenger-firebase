part of 'reset_password_bloc.dart';

enum ResetPasswordStatus { initial, loading, success, failure }

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    @Default(ResetPasswordStatus.initial) ResetPasswordStatus status,
    String? errorMessage,
  }) = _ResetPasswordState;
}