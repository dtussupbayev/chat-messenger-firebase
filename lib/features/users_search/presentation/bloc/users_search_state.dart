part of 'users_search_bloc.dart';

@freezed
sealed class UsersSearchState with _$UsersSearchState {
  const factory UsersSearchState.initial() = Initial;
  const factory UsersSearchState.loading() = Loading;
  const factory UsersSearchState.success(List<UserEntity> users) = Success;
  const factory UsersSearchState.error(String message) = Error;
  const factory UsersSearchState.chatRoomCreated({
    required String chatRoomId,
    required UserEntity user,
  }) = ChatRoomCreated;
}
