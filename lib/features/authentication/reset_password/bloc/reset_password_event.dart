part of 'reset_password_bloc.dart';

sealed class ResetPasswordEvent extends Equatable {
  const ResetPasswordEvent();

  @override
  List<Object> get props => [];
}

class ResetPasswordSubmitted extends ResetPasswordEvent {
  const ResetPasswordSubmitted({required this.email});

  final String email;

  @override
  List<Object> get props => [email];

  ResetPasswordSubmitted copyWith({
    String? email,
  }) {
    return ResetPasswordSubmitted(
      email: email ?? this.email,
    );
  }
}
