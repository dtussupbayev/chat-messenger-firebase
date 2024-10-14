part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationFirstRun extends AuthenticationState {}

final class AuthenticationNotAuthenticated extends AuthenticationState {}

final class AuthenticationSplash extends AuthenticationState {}

final class AuthenticationNotVerified extends AuthenticationState {}

final class AuthenticationSuccess extends AuthenticationState {
  const AuthenticationSuccess(
    this.user,
  );
  final User user;
}
