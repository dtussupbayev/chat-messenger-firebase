import 'package:realtime_chat_app/features/authentication/data/dtos/user_dto.dart';

class UserEntity {
  UserEntity({
    required this.uid,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.searchKeywords,
  });

  factory UserEntity.fromDto(UserDto userDto) {
    return UserEntity(
      uid: userDto.uid,
      email: userDto.email,
      firstName: userDto.firstName,
      lastName: userDto.lastName,
      searchKeywords: userDto.searchKeywords,
    );
  }

  final String uid;
  final String email;
  final String firstName;
  final String lastName;
  final List<String> searchKeywords;
}
