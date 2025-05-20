part of 'chats_bloc.dart';

class ChatsState extends Equatable {
  const ChatsState({
    this.chatRoomsStream,
    this.uid,
    this.firstName = '',
    this.lastName = '',
    this.id = '',
    this.firstLetters = '',
    this.isLoading = false,
    this.error,
  });

  final Stream? chatRoomsStream;
  final String? uid;
  final String firstName;
  final String lastName;
  final String id;
  final String firstLetters;
  final bool isLoading;
  final String? error;

  ChatsState copyWith({
    Stream? chatRoomsStream,
    String? uid,
    String? firstName,
    String? lastName,
    String? id,
    String? firstLetters,
    bool? isLoading,
    String? error,
  }) {
    return ChatsState(
      chatRoomsStream: chatRoomsStream ?? this.chatRoomsStream,
      uid: uid ?? this.uid,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      id: id ?? this.id,
      firstLetters: firstLetters ?? this.firstLetters,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  @override
  List<Object?> get props => [
        chatRoomsStream,
        uid,
        firstName,
        lastName,
        id,
        firstLetters,
        isLoading,
        error,
      ];
}
