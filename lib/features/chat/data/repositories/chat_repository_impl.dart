import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:realtime_chat_app/features/chat/domain/entites/message_entity.dart';
import 'package:realtime_chat_app/features/chat/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements IChatRepository {
  const ChatRepositoryImpl();

  @override
  Stream<List<MessageEntity>> getMessageList(String chatRoomId) {
    return FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .collection('messages')
        .orderBy('timestamp')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return MessageEntity(
          messageId: doc.id,
          messageText: doc['message'],
          sendBy: doc['sendBy'],
          timestamp: (doc['timestamp'] as Timestamp).toDate(),
        );
      }).toList();
    });
  }

  @override
  Future<void> sendMessage(MessageEntity message, String chatRoomId) async {
    final messageMap = {
      'message': message.messageText,
      'sendBy': message.sendBy,
      'timestamp': FieldValue.serverTimestamp(),
    };
    await FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .collection('messages')
        .doc(message.messageId)
        .set(messageMap);
  }

  @override
  Future<void> deleteMessage(MessageEntity message, String chatRoomId) async {
    await FirebaseFirestore.instance
        .collection('chatRooms')
        .doc(chatRoomId)
        .collection('messages')
        .doc(message.messageId)
        .delete();
  }
}
