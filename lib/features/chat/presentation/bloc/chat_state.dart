part of 'chat_bloc.dart';

enum ChatStatus { initial, loading, success, failure }

@freezed
sealed class ChatState with _$ChatState {
  const factory ChatState({
    @Default(ChatStatus.initial) ChatStatus status,
    @Default([]) List<MessageEntity> messages,
  }) = _ChatState;
}