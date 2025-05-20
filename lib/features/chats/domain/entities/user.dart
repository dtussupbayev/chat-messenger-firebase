import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  final String uid;
  final String firstName;
  final String lastName;
  final String email;

  @override
  List<Object?> get props => [uid, firstName, lastName, email];
}
