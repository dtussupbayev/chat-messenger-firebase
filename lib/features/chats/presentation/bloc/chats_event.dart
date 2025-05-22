part of 'chats_bloc.dart';

abstract class ChatsEvent extends Equatable {
  const ChatsEvent();

  @override
  List<Object?> get props => [];
}

class LoadChats extends ChatsEvent {
  const LoadChats();
}

class GetUserInfo extends ChatsEvent {
  const GetUserInfo({required this.chatRoomId, required this.myUid});

  final String chatRoomId;
  final String myUid;

  @override
  List<Object?> get props => [chatRoomId, myUid];
}
