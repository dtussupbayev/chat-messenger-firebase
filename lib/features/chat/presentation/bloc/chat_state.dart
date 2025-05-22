part of 'chat_bloc.dart';

enum ChatStatus { initial, loading, success, failure }

class ChatState extends Equatable {
  const ChatState({this.status = ChatStatus.initial, this.messages = const []});

  final ChatStatus status;
  final List<MessageEntity> messages;

  @override
  List<Object> get props => [status, messages];

  ChatState copyWith({ChatStatus? status, List<MessageEntity>? messages}) {
    return ChatState(
      status: status ?? this.status,
      messages: messages ?? this.messages,
    );
  }
}
