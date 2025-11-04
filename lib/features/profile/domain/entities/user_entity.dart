import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({required this.email, required this.firstName, required this.lastName});

  final String email;
  final String firstName;
  final String lastName;

  @override
  List<Object?> get props => [email, firstName, lastName];
}
