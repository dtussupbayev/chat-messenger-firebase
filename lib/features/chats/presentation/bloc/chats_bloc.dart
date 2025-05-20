import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_chat_app/core/services/firestore_service.dart';

part 'chats_event.dart';
part 'chats_state.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc() : super(const ChatsState()) {
    on<LoadChats>(_onLoadChats);
    on<GetUserInfo>(_onGetUserInfo);
  }

  Future<void> _onLoadChats(
    LoadChats event,
    Emitter<ChatsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final User? currentUser = FirebaseAuth.instance.currentUser;
      final uid = currentUser?.uid;

      final chatRoomsStream = await FirestoreService.getChatRooms();

      emit(
        state.copyWith(
          isLoading: false,
          uid: uid,
          chatRoomsStream: chatRoomsStream,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onGetUserInfo(
    GetUserInfo event,
    Emitter<ChatsState> emit,
  ) async {
    try {
      final id =
          event.chatRoomId.replaceFirst(event.myUid, '').replaceFirst('_', '');

      final QuerySnapshot querySnapshot =
          await FirestoreService.getUserInfo(id);

      String firstName = '';
      String lastName = '';

      if (querySnapshot.docs.isNotEmpty) {
        firstName = "${querySnapshot.docs[0]["firstName"]}";
        lastName = "${querySnapshot.docs[0]["lastName"]}";
      }

      String firstLetters = '';
      if (firstName.isNotEmpty) {
        firstLetters += firstName[0].toUpperCase();
      }
      if (lastName.isNotEmpty) {
        firstLetters += lastName[0].toUpperCase();
      }

      emit(
        state.copyWith(
          id: id,
          firstName: firstName,
          lastName: lastName,
          firstLetters: firstLetters,
        ),
      );
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
