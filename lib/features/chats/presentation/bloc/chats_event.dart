part of 'chats_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.loadChats() = LoadChats;
  const factory ChatsEvent.getUserInfo({
    required String chatRoomId,
    required String myUid,
  }) = GetUserInfo;
}
