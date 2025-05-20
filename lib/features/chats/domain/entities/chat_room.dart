import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class ChatRoom extends Equatable {
  const ChatRoom({
    required this.id,
    required this.lastMessage,
    required this.lastMessageSendBy,
    required this.lastMessageSendTs,
    required this.users,
    required this.time,
  });

  final String id;
  final String lastMessage;
  final String lastMessageSendBy;
  final String lastMessageSendTs;
  final List<String> users;
  final Timestamp time;

  @override
  List<Object?> get props => [
        id,
        lastMessage,
        lastMessageSendBy,
        lastMessageSendTs,
        users,
        time,
      ];
}
