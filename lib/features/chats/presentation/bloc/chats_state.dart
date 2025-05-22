part of 'chats_bloc.dart';

class ChatsState extends Equatable {
  const ChatsState({
    this.chatRoomsStream,
    this.uid,
    this.users = const {},
    this.isLoading = false,
    this.error,
  });

  final Stream? chatRoomsStream;
  final String? uid;
  final Map<String, UserData> users;
  final bool isLoading;
  final String? error;

  ChatsState copyWith({
    Stream? chatRoomsStream,
    String? uid,
    Map<String, UserData>? users,
    bool? isLoading,
    String? error,
  }) {
    return ChatsState(
      chatRoomsStream: chatRoomsStream ?? this.chatRoomsStream,
      uid: uid ?? this.uid,
      users: users ?? this.users,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  @override
  List<Object?> get props => [chatRoomsStream, uid, users, isLoading, error];
}

class UserData extends Equatable {
  const UserData({
    required this.firstName,
    required this.lastName,
    required this.firstLetters,
  });

  const UserData.empty() : firstName = '', lastName = '', firstLetters = '';
  final String firstName;
  final String lastName;
  final String firstLetters;

  @override
  List<Object?> get props => [firstName, lastName, firstLetters];
}
