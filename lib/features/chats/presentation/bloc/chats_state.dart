part of 'chats_bloc.dart';

@freezed
abstract class ChatsState with _$ChatsState {
  const factory ChatsState({
    Stream? chatRoomsStream,
    String? uid,
    @Default({}) Map<String, UserData> users,
    @Default(false) bool isLoading,
    String? error,
  }) = _ChatsState;
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    required String firstName,
    required String lastName,
    required String firstLetters,
  }) = _UserData;

  const UserData._();

  factory UserData.empty() =>
      const UserData(firstName: '', lastName: '', firstLetters: '');
}
