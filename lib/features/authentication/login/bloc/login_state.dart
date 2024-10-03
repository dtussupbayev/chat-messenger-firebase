part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  const LoginState({
    this.status = LoginStatus.initial,
    this.isPasswordHidden = true,
    this.errorMessage,
  });
  final LoginStatus status;
  final bool isPasswordHidden;
  final String? errorMessage;

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
    );
  }
}
