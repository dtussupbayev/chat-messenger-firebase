import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:realtime_chat_app/features/chats/domain/entities/chat_room.dart';

class ChatRoomModel extends ChatRoom {
  const ChatRoomModel({
    required super.id,
    required super.lastMessage,
    required super.lastMessageSendBy,
    required super.lastMessageSendTs,
    required super.users,
    required super.time,
  });

  factory ChatRoomModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;
    return ChatRoomModel(
      id: snapshot.id,
      lastMessage: data['lastMessage'] ?? '',
      lastMessageSendBy: data['lastMessageSendBy'] ?? '',
      lastMessageSendTs: data['lastMessageSendTs'] ?? '',
      users: List<String>.from(data['users'] ?? []),
      time: data['time'] ?? 0,
    );
  }
}
