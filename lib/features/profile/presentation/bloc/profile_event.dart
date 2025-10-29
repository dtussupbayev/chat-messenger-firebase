part of 'profile_bloc.dart';

sealed class ProfileEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadProfileInfoEvent extends ProfileEvent {}

class SignOutEvent extends ProfileEvent {}
