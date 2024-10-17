import 'package:realtime_chat_app/features/authentication/domain/entities/user_entity.dart';

abstract interface class IAuthRepository {
  const IAuthRepository();

  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  );

  Future<UserEntity> createUserWithEmailAndPassword(
    String email,
    String password,
    String firstName,
    String lastName,
  );

  Future<void> addUserDetails(UserEntity user);

  List<String> generateSearchKeywords(String firstName, String lastName);

  Future<void> sendResetPasswordEmail(String email);
}
