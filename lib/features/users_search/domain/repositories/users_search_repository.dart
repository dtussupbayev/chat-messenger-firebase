import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';

abstract class UsersSearchRepository {
  Future<List<UserEntity>> searchUsers(String query);

  Future<String> createChatRoomWithUser(UserEntity selectedUser);
}
