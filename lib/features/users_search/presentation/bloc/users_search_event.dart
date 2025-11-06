part of 'users_search_bloc.dart';

@freezed
sealed class UsersSearchEvent with _$UsersSearchEvent {
  const factory UsersSearchEvent.searchUsers(String query) = SearchUsers;
  const factory UsersSearchEvent.createChatRoom(UserEntity user) = CreateChatRoom;
}
