part of 'reset_password_bloc.dart';

enum ResetPasswordStatus { initial, loading, success, failure }

class ResetPasswordState extends Equatable {
  const ResetPasswordState({
    this.status = ResetPasswordStatus.initial,
    this.errorMessage,
  });

  final ResetPasswordStatus status;
  final String? errorMessage;

  @override
  List<Object?> get props => [status, errorMessage];

  ResetPasswordState copyWith({
    ResetPasswordStatus? status,
    String? errorMessage,
  }) {
    return ResetPasswordState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
