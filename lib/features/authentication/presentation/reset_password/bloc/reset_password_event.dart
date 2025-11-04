part of 'reset_password_bloc.dart';

@freezed
sealed class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.resetPasswordSubmitted({required String email}) =
      ResetPasswordSubmitted;
}
