part of 'account_bloc.dart';

sealed class AccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadAccountInfoEvent extends AccountEvent {}

class SignOutEvent extends AccountEvent {}
