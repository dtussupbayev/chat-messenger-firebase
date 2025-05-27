import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  const UserEntity({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  final String uid;
  final String firstName;
  final String lastName;
  final String email;

  String get fullName => '$firstName $lastName';

  String get firstLetters {
    String letters = '';
    if (firstName.isNotEmpty) {
      letters += firstName[0].toUpperCase();
    }
    if (lastName.isNotEmpty) {
      letters += lastName[0].toUpperCase();
    }
    return letters.isEmpty ? '?' : letters;
  }

  @override
  List<Object?> get props => [uid, firstName, lastName, email];
}
