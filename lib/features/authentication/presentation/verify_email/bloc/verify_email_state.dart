part of 'verify_email_bloc.dart';

enum VerifyEmailStatus { initial, loading, success, failure, emailVerified }

class VerifyEmailState extends Equatable {
  const VerifyEmailState({
    this.status = VerifyEmailStatus.initial,
    this.canResendEmail = false,
    this.errorMessage,
  });

  final VerifyEmailStatus status;
  final bool canResendEmail;
  final String? errorMessage;

  @override
  List<Object?> get props => [status, canResendEmail, errorMessage];

  VerifyEmailState copyWith({
    VerifyEmailStatus? status,
    bool? canResendEmail,
    String? errorMessage,
  }) {
    return VerifyEmailState(
      status: status ?? this.status,
      canResendEmail: canResendEmail ?? this.canResendEmail,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
