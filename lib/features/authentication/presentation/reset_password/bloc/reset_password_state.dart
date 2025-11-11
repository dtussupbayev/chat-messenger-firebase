part of 'reset_password_bloc.dart';

@freezed
sealed class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = ResetPasswordInitial;
  const factory ResetPasswordState.loading() = ResetPasswordLoading;
  const factory ResetPasswordState.success() = ResetPasswordSuccess;
  const factory ResetPasswordState.failure({required String errorMessage}) = ResetPasswordFailure;
}
