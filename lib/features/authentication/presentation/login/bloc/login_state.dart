part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failure }

@freezed
sealed class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    @Default(true) bool isPasswordHidden,
    String? errorMessage,
  }) = _LoginState;
}
