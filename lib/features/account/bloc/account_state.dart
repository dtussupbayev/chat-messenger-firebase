part of 'account_bloc.dart';

sealed class AccountState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AccountInitial extends AccountState {}

class AccountLoading extends AccountState {}

class AccountLoaded extends AccountState {
  final String email;
  final String firstName;
  final String lastName;

  AccountLoaded({
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object?> get props => [email, firstName, lastName];
}

class AccountSignedOut extends AccountState {}

class AccountError extends AccountState {
  final String message;

  AccountError(this.message);

  @override
  List<Object?> get props => [message];
}
