import 'package:realtime_chat_app/features/profile/domain/entities/user_entity.dart';

abstract class ProfileRepository {
  Future<UserEntity> getProfileInfo(String uid);
  Future<void> signOut();
}
