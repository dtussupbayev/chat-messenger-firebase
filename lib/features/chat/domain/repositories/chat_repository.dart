import 'package:realtime_chat_app/features/chat/domain/entities/message_entity.dart';

abstract interface class IChatRepository {
  const IChatRepository();

  Stream<List<MessageEntity>> getMessageList(String chatRoomId);

  Future<void> sendMessage(MessageEntity message, String chatRoomId);

  Future<void> deleteMessage(MessageEntity message, String chatRoomId);
}
