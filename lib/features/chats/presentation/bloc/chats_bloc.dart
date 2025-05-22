import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/domain/use_case/base_use_case.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_chat_rooms_use_case.dart';
import 'package:realtime_chat_app/features/chats/domain/use_cases/get_user_info_use_case.dart';

part 'chats_event.dart';

part 'chats_state.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc({
    required GetChatRoomsUseCase getChatRoomsUseCase,
    required GetUserInfoUseCase getUserInfoUseCase,
  }) : _getChatRoomsUseCase = getChatRoomsUseCase,
       _getUserInfoUseCase = getUserInfoUseCase,
       super(const ChatsState()) {
    on<LoadChats>(_onLoadChats);
    on<GetUserInfo>(_onGetUserInfo);
  }

  final GetChatRoomsUseCase _getChatRoomsUseCase;
  final GetUserInfoUseCase _getUserInfoUseCase;

  Future<void> _onLoadChats(LoadChats event, Emitter<ChatsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final firebase_auth.User? currentUser =
          firebase_auth.FirebaseAuth.instance.currentUser;
      final uid = currentUser?.uid;

      final chatRoomsStream = await _getChatRoomsUseCase.execute(
        const NoParams(),
      );

      emit(
        state.copyWith(
          isLoading: false,
          uid: uid,
          chatRoomsStream: chatRoomsStream,
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> _onGetUserInfo(
    GetUserInfo event,
    Emitter<ChatsState> emit,
  ) async {
    try {
      final id = event.chatRoomId
          .replaceFirst(event.myUid, '')
          .replaceFirst('_', '');

      final user = await _getUserInfoUseCase.execute(
        GetUserInfoParams(uid: id),
      );

      if (user != null) {
        final firstName = user.firstName;
        final lastName = user.lastName;

        String firstLetters = '';
        if (firstName.isNotEmpty) {
          firstLetters += firstName[0].toUpperCase();
        }
        if (lastName.isNotEmpty) {
          firstLetters += lastName[0].toUpperCase();
        }

        final updatedUsers = Map<String, UserData>.from(state.users);
        updatedUsers[id] = UserData(
          firstName: user.firstName,
          lastName: user.lastName,
          firstLetters: firstLetters,
        );

        emit(state.copyWith(users: updatedUsers));
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
