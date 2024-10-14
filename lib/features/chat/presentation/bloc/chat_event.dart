part of 'chat_bloc.dart';

sealed class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class ChatSubscriptionRequested extends ChatEvent {
  const ChatSubscriptionRequested({required this.chatRoomId});

  final String chatRoomId;

  @override
  List<Object> get props => [chatRoomId];
}

class ChatMessageSended extends ChatEvent {
  const ChatMessageSended({
    required this.message,
    required this.chatRoomId,
  });

  final MessageEntity message;
  final String chatRoomId;

  @override
  List<Object> get props => [message, chatRoomId];
}

class ChatMessageDeleted extends ChatEvent {
  const ChatMessageDeleted({
    required this.message,
    required this.chatRoomId,
  });

  final MessageEntity message;
  final String chatRoomId;

  @override
  List<Object> get props => [message, chatRoomId];
}
