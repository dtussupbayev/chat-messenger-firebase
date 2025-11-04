part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginSubmitted({required String email, required String password}) = LoginSubmitted;
  const factory LoginEvent.togglePasswordVisibility() = TogglePasswordVisibility;
}