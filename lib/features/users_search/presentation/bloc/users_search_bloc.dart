import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';

import 'package:realtime_chat_app/features/users_search/domain/repositories/users_search_repository.dart';

part 'users_search_bloc.freezed.dart';
part 'users_search_event.dart';
part 'users_search_state.dart';

class UsersSearchBloc extends Bloc<UsersSearchEvent, UsersSearchState> {
  UsersSearchBloc({required UsersSearchRepository usersSearchRepository})
    : _usersSearchRepository = usersSearchRepository,
      super(const UsersSearchState.initial()) {
    on<SearchUsers>(_onSearchUsers);
    on<CreateChatRoom>(_onCreateChatRoom);
  }

  final UsersSearchRepository _usersSearchRepository;

  Future<void> _onSearchUsers(SearchUsers event, Emitter<UsersSearchState> emit) async {
    emit(const UsersSearchState.loading());
    if (event.query.trim().isEmpty) {
      emit(const UsersSearchState.success([]));
      return;
    }
    try {
      final users = await _usersSearchRepository.searchUsers(event.query);
      emit(UsersSearchState.success(users));
    } catch (e) {
      emit(UsersSearchState.error(e.toString()));
    }
  }

  Future<void> _onCreateChatRoom(CreateChatRoom event, Emitter<UsersSearchState> emit) async {
    emit(const UsersSearchState.loading());
    try {
      final chatRoomId = await _usersSearchRepository.createChatRoomWithUser(event.user);
      emit(UsersSearchState.chatRoomCreated(chatRoomId: chatRoomId, user: event.user));
    } catch (e) {
      emit(UsersSearchState.error(e.toString()));
    }
  }
}
