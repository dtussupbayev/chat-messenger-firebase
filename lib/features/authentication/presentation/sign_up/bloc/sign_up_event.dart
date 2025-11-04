part of 'sign_up_bloc.dart';

@freezed
sealed class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUpSubmitted({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) = SignUpSubmitted;
  const factory SignUpEvent.togglePasswordVisibility() = TogglePasswordVisibility;
  const factory SignUpEvent.toggleRepeatPasswordVisibility() = ToggleRepeatPasswordVisibility;
}
