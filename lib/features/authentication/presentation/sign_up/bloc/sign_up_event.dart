part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpSubmitted extends SignUpEvent {
  const SignUpSubmitted({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  final String email;
  final String password;
  final String firstName;
  final String lastName;

  @override
  List<Object> get props => [email, password, firstName, lastName];
}

class TogglePasswordVisibility extends SignUpEvent {}

class ToggleRepeatPasswordVisibility extends SignUpEvent {}
