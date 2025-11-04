part of 'chat_bloc.dart';

@freezed
sealed class ChatEvent with _$ChatEvent {
  const factory ChatEvent.subscriptionRequested({required String chatRoomId}) = ChatSubscriptionRequested;
  const factory ChatEvent.messageSended({required MessageEntity message, required String chatRoomId}) = ChatMessageSended;
  const factory ChatEvent.messageDeleted({required MessageEntity message, required String chatRoomId}) = ChatMessageDeleted;
}