part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  final LoginStatus status;
  final bool isPasswordHidden;
  final String? errorMessage;
  final bool isValid;

  const LoginState({
    this.status = LoginStatus.initial,
    this.isPasswordHidden = true,
    this.errorMessage,
    this.isValid = false,
  });

  @override
  List<Object?> get props => [status, isPasswordHidden, errorMessage];

  LoginState copyWith({
    LoginStatus? status,
    bool? isPasswordHidden,
    String? errorMessage,
    bool? isValid,
  }) {
    return LoginState(
      status: status ?? this.status,
      isPasswordHidden: isPasswordHidden ?? this.isPasswordHidden,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
    );
  }
}
