import 'package:realtime_chat_app/features/chats/domain/entities/chat_room.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/user.dart';

abstract class ChatsRepository {
  Future<Stream<List<ChatRoom>>> getChatRooms();

  Future<User?> getUserInfo(String uid);
}
