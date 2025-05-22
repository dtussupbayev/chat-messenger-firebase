part of 'profile_bloc.dart';

sealed class ProfileState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileLoaded extends ProfileState {
  ProfileLoaded({
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  final String email;
  final String firstName;
  final String lastName;

  @override
  List<Object?> get props => [email, firstName, lastName];
}

class ProfileSignedOut extends ProfileState {}

class ProfileError extends ProfileState {
  ProfileError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
