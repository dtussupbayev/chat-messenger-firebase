part of 'verify_email_bloc.dart';

enum VerifyEmailStatus { initial, loading, success, failure, emailVerified }

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState({
    @Default(VerifyEmailStatus.initial) VerifyEmailStatus status,
    @Default(false) bool canResendEmail,
    String? errorMessage,
  }) = _VerifyEmailState;
}