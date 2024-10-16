
import 'package:flutter_application_1/features/chat/domain/entites/message_entity.dart';

abstract interface class IChatRepository {
  const IChatRepository();
  
  Stream<List<MessageEntity>> getMessageList(String chatRoomId);
  Future<void> sendMessage(MessageEntity message, String chatRoomId);
  Future<void> deleteMessage(MessageEntity message, String chatRoomId);
}