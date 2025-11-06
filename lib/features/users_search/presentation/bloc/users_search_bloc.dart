import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_chat_app/features/users_search/domain/entities/user_entity.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/create_chat_room_usecase.dart';
import 'package:realtime_chat_app/features/users_search/domain/usecases/search_users_usecase.dart';

part 'users_search_bloc.freezed.dart';
part 'users_search_event.dart';
part 'users_search_state.dart';

class UsersSearchBloc extends Bloc<UsersSearchEvent, UsersSearchState> {
  UsersSearchBloc({
    required SearchUsersUseCase searchUsersUseCase,
    required CreateChatRoomUseCase createChatRoomUseCase,
  }) : _searchUsersUseCase = searchUsersUseCase,
       _createChatRoomUseCase = createChatRoomUseCase,
       super(const UsersSearchState.initial()) {
    on<SearchUsers>(_onSearchUsers);
    on<CreateChatRoom>(_onCreateChatRoom);
  }

  final SearchUsersUseCase _searchUsersUseCase;
  final CreateChatRoomUseCase _createChatRoomUseCase;

  Future<void> _onSearchUsers(SearchUsers event, Emitter<UsersSearchState> emit) async {
    emit(const UsersSearchState.loading());
    try {
      final users = await _searchUsersUseCase.execute(event.query);
      emit(UsersSearchState.success(users));
    } catch (e) {
      emit(UsersSearchState.error(e.toString()));
    }
  }

  Future<void> _onCreateChatRoom(CreateChatRoom event, Emitter<UsersSearchState> emit) async {
    emit(const UsersSearchState.loading());
    try {
      final chatRoomId = await _createChatRoomUseCase.execute(event.user);
      emit(UsersSearchState.chatRoomCreated(chatRoomId: chatRoomId, user: event.user));
    } catch (e) {
      emit(UsersSearchState.error(e.toString()));
    }
  }
}
